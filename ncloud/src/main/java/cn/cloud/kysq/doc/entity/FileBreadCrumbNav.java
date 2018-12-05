package cn.cloud.kysq.doc.entity;

/**
 * 面包屑导航实体类
 * 
 * @author zhb
 *
 */
public class FileBreadCrumbNav {
	private String fileID;
	private String curpath;
	private String pathStr;

	public FileBreadCrumbNav() {
		
	}

	public String getFileID() {
		return fileID;
	}

	public void setFileID(String fileID) {
		this.fileID = fileID;
	}

	public String getCurpath() {
		return curpath;
	}

	public void setCurpath(String curpath) {
		this.curpath = curpath;
	}

	public String getPathStr() {
		return pathStr;
	}

	public void setPathStr(String pathStr) {
		this.pathStr = pathStr;
	}
}
