package cn.cloud.kysq.team.entity;

import java.util.List;

import cn.cloud.kysq.login.entity.User;

public class TaskDTO {

	private Task task;
	private List<User> executor; // 执行任务的人

	public TaskDTO() {
		super();
	}

	public Task getTask() {
		return task;
	}

	public void setTask(Task task) {
		this.task = task;
	}

	public List<User> getExecutor() {
		return executor;
	}

	public void setExecutor(List<User> executor) {
		this.executor = executor;
	}
}
