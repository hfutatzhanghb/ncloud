package cn.cloud.kysq.doc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import cn.cloud.kysq.doc.entity.FileInfo;

@Repository
public class FileDao {

	@Autowired
	private JdbcTemplate jdbctemplate;

	public List<FileInfo> findAllWithName(String filename) {
		List<FileInfo> fileList = new ArrayList<FileInfo>();

		String sql = "select * from file_detail where filePath = ?";

		RowMapper<FileInfo> rowMapper = new RowMapper<FileInfo>() {

			@Override
			public FileInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
				FileInfo file_detail = new FileInfo();
				file_detail.setFileName(rs.getString(2));
				file_detail.setFileOwner(rs.getString(3));
				file_detail.setFileSize(rs.getLong(4));
				return file_detail;
			}

		};
		Object[] args = new Object[1];
		args[0] = filename;
		// List<File_detail> result = jdbctemplate.query(sql, rowMapper);
		List<FileInfo> result = jdbctemplate.query(sql, args, rowMapper);

		return result;
	}

	/**
	 * 根据teamID找到团队空间的第一级的目录和文件
	 * 
	 * @return
	 */
	public List<FileInfo> findFirstLevelDocs(String teamID) {
		Integer teamid = Integer.valueOf(teamID);
		String sql = "select * from file_detail,file_relationship where fileofTeam = ? and fileParentID = 0 and file_detail.fileID = file_relationship.fileID";
		List<FileInfo> rootfileList = jdbctemplate.query(sql, new Object[] { teamid }, new MyFileMapper());

		return rootfileList;
	}

	// 自定义File的RowMapper
	class MyFileMapper implements RowMapper<FileInfo> {

		@Override
		public FileInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
			FileInfo file = new FileInfo();
			file.setFileID(rs.getInt("fileID"));
			file.setFileName(rs.getString("fileName"));
			file.setFileOwner((rs.getString("fileOwner")));
			file.setFileSize(rs.getLong("fileSize"));
			file.setFileCreateTime(rs.getDate("fileCreateTime"));
			file.setFileType(rs.getInt("fileType"));
			file.setFilePath(rs.getString("filePath"));
			file.setFileStatus(rs.getInt("fileStatus"));
			return file;
		}

	}

	/**
	 * 根据文件夹的文件ID找到此文件夹下的子文件夹和文件
	 * 
	 * @param filename
	 * @return
	 */
	public List<FileInfo> findSubFilesByParentId(String fileID) {
		Integer i_fileid = Integer.valueOf(fileID);
		String sql = "SELECT t1.fileID, t1.fileName, t1.fileOwner, t1.fileSize, t1.fileType "
				+ "FROM file_detail AS t1,file_relationship AS t2 "
				+ "WHERE fileParentID = ? AND t1.fileID = t2.fileID";
		List<FileInfo> subFilelist = jdbctemplate.query(sql, new Object[] { i_fileid }, new RowMapper() {

			@Override
			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				FileInfo file_detail = new FileInfo();
				file_detail.setFileID(rs.getInt("fileID"));
				file_detail.setFileName(rs.getString("fileName"));
				file_detail.setFileOwner(rs.getString("fileOwner"));
				file_detail.setFileSize(rs.getLong("fileSize"));
				file_detail.setFileType(rs.getInt("fileType"));
				return file_detail;
			}
		});
		return subFilelist;
	}

	/**
	 * 向数据库中中file_detail表中插入一条文件信息数据。
	 * 
	 * @return
	 */
	public int insertFileInfo(String filename, String fileOwner, Long filesize, Date fileCreateTime, Integer fileType,
			String fileofTeam, String filePath) {
		Integer fileOfTeam_new = Integer.valueOf(fileofTeam);
		String sql = "insert into file_detail (fileName,fileOwner,fileSize,fileCreateTime,fileType,fileofTeam,filePath) values(?,?,?,?,?,?,?)";
		Timestamp t = new Timestamp(fileCreateTime.getTime());
		int updateStatus = jdbctemplate.update(sql,
				new Object[] { filename, fileOwner, filesize, t, fileType, fileOfTeam_new, filePath });
		return updateStatus;
	}

	/**
	 * 根据文件路径得到文件ID
	 * 
	 * @param filePath
	 * @return
	 */
	public int selectFileIdByFilePath(String filePath) {
		String sql = "select fileID from file_detail where filePath = ?";
		List<FileInfo> query = jdbctemplate.query(sql, new Object[] { filePath }, new RowMapper() {

			@Override
			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				FileInfo info = new FileInfo();
				info.setFileID(rs.getInt(1));
				return info;
			}

		});
		if (query.size() == 0) {
			return 0;
		} else {
			return query.get(0).getFileID();
		}
	}

	public int insertFileRelationShip(Integer fileID, String fileName, String parentID) {
		String sql = "insert into file_relationship(fileID,fileName,fileParentID) values(?,?,?)";
		int update = jdbctemplate.update(sql, new Object[] { fileID, fileName, parentID });
		return update;
	}

}
