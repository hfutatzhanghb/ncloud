package cn.cloud.kysq.team.entity;

import java.util.ArrayList;

/**
 * 项目的一个阶段 一个阶段包含多个任务
 * 
 * @author Administrator
 *
 */
public class Stage {

	private Integer stageID; // 阶段ID
	private String stageName; // 阶段名
	private Integer projectID; // 所属项目ID
	private ArrayList<Task> taskList; // 阶段里包含的任务

}
