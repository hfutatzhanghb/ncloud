package cn.cloud.kysq.team.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * 封装分页对象
 **/
public class PageList {
	private int total; // 总行数
	private List<Team> list = new ArrayList();

	public PageList() {
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List<Team> getList() {
		return list;
	}

	public void setList(List<Team> list) {
		this.list = list;
	}

}