package cn.cloud.kysq.doc.dao;

import java.util.Date;
import java.util.List;

import cn.cloud.kysq.doc.entity.FileInfo;

public interface IFileDao {

	/**
	 * 根据文件夹的文件ID找到此文件夹下的子文件夹和文件
	 * 
	 * @param filename
	 * @return
	 */
	public List<FileInfo> findSubFilesByParentId(String fileID);

	/**
	 * 根据teamID找到团队空间的第一级的目录和文件
	 * 
	 * @return
	 */
	public List<FileInfo> findFirstLevelDocs(String teamno);

	/**
	 * 向数据库中中file_detail表中插入一条文件信息数据。
	 * @return
	 */
	public int insertFileInfo(String filename, String fileOwner, Long filesize, Date fileCreateTime, Integer fileType,
			String fileofTeam, String filePath);
	
	/**
	 * 根据文件路径得到文件ID
	 * @param filePath
	 * @return
	 */
	public int selectFileIdByFilePath(String filePath);
	
	public int insertFileRelationShip(Integer fileID, String fileName, String parentID);

}
