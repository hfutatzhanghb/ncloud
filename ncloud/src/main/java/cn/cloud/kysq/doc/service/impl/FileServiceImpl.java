package cn.cloud.kysq.doc.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.cloud.kysq.doc.dao.IFileDao;
import cn.cloud.kysq.doc.entity.FileBreadCrumbNav;
import cn.cloud.kysq.doc.entity.FileInfo;
import cn.cloud.kysq.doc.service.IFileService;

@Service
public class FileServiceImpl implements IFileService {

	@Autowired
	IFileDao fileDao;

	@Override
	public List<FileInfo> queryFirstLevelFiles(String teamID) {

		List<FileInfo> findFirstLevelDocs = fileDao.findFirstLevelDocs(teamID);
		return findFirstLevelDocs;
	}

	@Override
	public List<FileInfo> querySubFilesByFileID(String fileID) {
		List<FileInfo> findSubFilesByParentId = fileDao.findSubFilesByParentId(fileID);
		return findSubFilesByParentId;
	}

	@Override
	public int uploadFile(String fileName) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void downLoadFile(String fileName) {
		// TODO Auto-generated method stub

	}

	@Override
	public int deleteFile(String fileName) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<FileInfo> queryFiles(String path) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isDup(String fileName) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
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

	@Override
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
