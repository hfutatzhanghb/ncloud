package cn.cloud.kysq.doc.entity;

import java.util.List;

/**
 * 文件面包屑类，用于实现面包屑导航。
 * 
 * @author zhb
 *
 */
public class FileBreadCrumb {
	// 网盘的当前路径，用于写到隐藏input标签中，使用","分割
	private String pathStr;
	// 网盘的ID顺序，用于写到隐藏input标签中，使用","分割，顺序与pathStr对应
	private String idStr;
	// pathStr的分割后版本

	public FileBreadCrumb() {
	}

	public String getPathStr() {
		return pathStr;
	}

	public void setPathStr(String pathStr) {
		this.pathStr = pathStr;
	}

	public String getIdStr() {
		return idStr;
	}

	public void setIdStr(String idStr) {
		this.idStr = idStr;
	}
}
