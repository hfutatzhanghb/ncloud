package cn.cloud.kysq.doc.entity;

public class File_Relationship {

	private Integer autoID; // 自增 ID
	private Integer fileID;
	private String fileName;
	private Integer parentID; // 父文件ID，如果文件或文件夹已经是顶级，那么父文件ID=0

	public Integer getAutoID() {
		return autoID;
	}

	public void setAutoID(Integer autoID) {
		this.autoID = autoID;
	}

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

	public Integer getParentID() {
		return parentID;
	}

	public void setParentID(Integer parentID) {
		this.parentID = parentID;
	}

}