package cn.cloud.kysq.task.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.cloud.kysq.login.entity.User;
import cn.cloud.kysq.task.service.TaskService;
import cn.cloud.kysq.team.entity.JoinTeamMsg;
import cn.cloud.kysq.team.entity.Team;
import cn.cloud.kysq.team.service.TeamService;

/**
 * 处理任务协作部分的controller
 * 
 * @author zhb
 *
 */
@Controller
@RequestMapping(value = "/task")
public class TaskController {

	@Autowired
	private TaskService taskService;

}
