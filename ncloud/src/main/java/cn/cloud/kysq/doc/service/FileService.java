package cn.cloud.kysq.doc.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.cloud.kysq.doc.dao.FileDao;
import cn.cloud.kysq.doc.entity.FileBreadCrumbNav;
import cn.cloud.kysq.doc.entity.FileInfo;

@Service
public class FileService {

	@Autowired
	FileDao fileDao;

	/**
	 * 得到当前团队的文档管理模块的第一级文件夹和文件
	 * 
	 * @param teamID
	 * @return
	 */
	public List<FileInfo> queryFirstLevelFiles(String teamID) {

		List<FileInfo> findFirstLevelDocs = fileDao.findFirstLevelDocs(teamID);
		return findFirstLevelDocs;
	}

	/**
	 * 得到指定文件夹下的所有文件和文件夹
	 * 
	 * @param fileID
	 * @return
	 */
	public List<FileInfo> querySubFilesByFileID(String fileID) {
		List<FileInfo> findSubFilesByParentId = fileDao.findSubFilesByParentId(fileID);
		return findSubFilesByParentId;
	}

	/*
	 * 实现面包屑导航
	 */
	public List<FileBreadCrumbNav> getBreadCrumbNavList(String fileID, String idStr, String curpath, String pathStr) {
		List<FileBreadCrumbNav> list = new ArrayList<FileBreadCrumbNav>();
		// 新的Path
		String newPathStr = pathStr + "," + curpath;
		String newIDStr = idStr + "," + fileID;
		int len = newPathStr.split(",").length;
		for (int i = 1; i < len; i++) {
			FileBreadCrumbNav fileBreadCrumbNav = new FileBreadCrumbNav();
			// fileBreadCrumbNav.setCurpath(newPathStr.split(",")[i]);
			fileBreadCrumbNav.setFileID(newIDStr.substring(0, getCommaIndex(newIDStr, i)));
			fileBreadCrumbNav.setPathStr(newPathStr.substring(0, getCommaIndex(newPathStr, i)));
			list.add(fileBreadCrumbNav);
		}
		FileBreadCrumbNav fileBreadCrumbNav = new FileBreadCrumbNav();
		fileBreadCrumbNav.setFileID(newIDStr);
		fileBreadCrumbNav.setPathStr(newPathStr);
		list.add(fileBreadCrumbNav);
		return list;
	}

	// 得到第index个逗号的索引
	public int getCommaIndex(String str, int index) {
		int count = 0;
		int result = 0;
		for (int i = 0; i < str.length(); i++) {
			if (str.charAt(i) == ',' && count == index) {
				result = i;
			} else if (str.charAt(i) == ',' && count < index) {
				count++;
			}
		}
		return result;
	}

	/**
	 * 上传文件的业务，往数据库中的文件实体表和文件关系表插入两条数据。
	 * 
	 * @return
	 */
	public int uploadFiles(String filename, String fileOwner, Long filesize, Date fileCreateTime, Integer fileType,
			String fileofTeam, String filePath, String parentID) {

		int fileID = fileDao.selectFileIdByFilePath(filePath);
		if (fileID != 0) {
			return 0;
		} else {
			int insertFileInfo = fileDao.insertFileInfo(filename, fileOwner, filesize, fileCreateTime, fileType,
					fileofTeam, filePath);
			fileID = fileDao.selectFileIdByFilePath(filePath);
			int status = fileDao.insertFileRelationShip(fileID, filename, parentID);
			return status;
		}

	}

}
