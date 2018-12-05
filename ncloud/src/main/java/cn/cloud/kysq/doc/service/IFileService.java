package cn.cloud.kysq.doc.service;

import java.util.Date;
import java.util.List;

import cn.cloud.kysq.doc.entity.FileBreadCrumbNav;
import cn.cloud.kysq.doc.entity.FileInfo;

public interface IFileService {
	/**
	 * 得到当前团队的文档管理模块的第一级文件夹和文件
	 * 
	 * @param teamID
	 * @return
	 */
	public List<FileInfo> queryFirstLevelFiles(String teamID);

	/**
	 * 得到指定文件夹下的所有文件和文件夹
	 * 
	 * @param fileID
	 * @return
	 */
	public List<FileInfo> querySubFilesByFileID(String fileID);

	/*
	 * 实现面包屑导航
	 */
	public List<FileBreadCrumbNav> getBreadCrumbNavList(String fileID,String idStr, String curpath, String pathStr);

	
	/**
	 * 上传文件的业务，往数据库中的文件实体表和文件关系表插入两条数据。
	 * @return
	 */
	public int uploadFiles(String filename, String fileOwner, Long filesize, Date fileCreateTime, Integer fileType,
			String fileofTeam, String filePath,String parentID);
	
	public int uploadFile(String fileName);

	public void downLoadFile(String fileName);

	public int deleteFile(String fileName);

	public List<FileInfo> queryFiles(String path);

	/**
	 * 同一命名空间下，是否文件名冲突
	 * 
	 * @param fileName
	 * @return
	 */
	public boolean isDup(String fileName);

	

}
