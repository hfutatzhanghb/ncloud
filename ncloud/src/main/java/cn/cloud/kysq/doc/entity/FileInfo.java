package cn.cloud.kysq.doc.entity;

import java.util.Date;

public class FileInfo {
	private Integer fileID; // 自增ID
	private String fileName;
	private String fileOwner;// 上传者用户名
	private Long fileSize;
	private Date fileCreateTime; // 文件上传时间
	private Integer fileType; // 0：文件夹，1：音频，2：视频，3：图片，4：文档
	private Integer fileofTeam; // 所属团队ID
	private String filePath; // 绝对路径
	private Integer fileStatus;// 文件状态：0：正常，1：回收站标记, 2:文件被永久删除

	public Integer getFileID() {
		return fileID;
	}

	public void setFileID(Integer fileID) {
		this.fileID = fileID;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileOwner() {
		return fileOwner;
	}

	public void setFileOwner(String fileOwner) {
		this.fileOwner = fileOwner;
	}

	public Date getFileCreateTime() {
		return fileCreateTime;
	}

	public void setFileCreateTime(Date fileCreateTime) {
		this.fileCreateTime = fileCreateTime;
	}

	public Integer getFileType() {
		return fileType;
	}

	public void setFileType(Integer fileType) {
		this.fileType = fileType;
	}

	public Integer getFileofTeam() {
		return fileofTeam;
	}

	public void setFileofTeam(Integer fileofTeam) {
		this.fileofTeam = fileofTeam;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public Integer getFileStatus() {
		return fileStatus;
	}

	public void setFileStatus(Integer fileStatus) {
		this.fileStatus = fileStatus;
	}

	public Long getFileSize() {
		return fileSize;
	}

	public void setFileSize(Long fileSize) {
		this.fileSize = fileSize;
	}

	@Override
	public String toString() {
		return "File_detail [fileID=" + fileID + ", fileName=" + fileName + ", fileOwner=" + fileOwner + ", fileSize="
				+ fileSize + ", fileCreateTime=" + fileCreateTime + ", fileType=" + fileType + ", fileofTeam="
				+ fileofTeam + ", filePath=" + filePath + ", fileStatus=" + fileStatus + "]";
	}
}