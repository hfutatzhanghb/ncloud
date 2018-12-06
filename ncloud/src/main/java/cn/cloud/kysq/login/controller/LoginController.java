package cn.cloud.kysq.login.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.cloud.kysq.login.service.LoginService;
import cn.cloud.kysq.team.entity.UserJoinTeamDTO;

@Controller
public class LoginController {

	@Autowired
	LoginService loginService;

	@RequestMapping(value = "login/login.do")
	public String login(HttpServletRequest request, @RequestParam(value = "email") String email,
			@RequestParam(value = "password") String password) {

		UserJoinTeamDTO userjoinedTeam = loginService.login(email, password);
		if (userjoinedTeam != null) {
			request.getSession().setAttribute("user", userjoinedTeam.getUser());
			if (userjoinedTeam.getTeam() != null) {
				request.getSession().setAttribute("loginteam", userjoinedTeam.getTeam().get(0));
				request.getSession().setAttribute("teams", userjoinedTeam.getTeam());
			}
		}
		return "team-manager";
	}

	@RequestMapping(value = "login1.do")
	public String login1(HttpServletRequest request, @RequestParam(value = "email") String email,
			@RequestParam(value = "password") String password) {

		UserJoinTeamDTO userjoinedTeam = loginService.login(email, password);
		if (userjoinedTeam != null) {
			request.getSession().setAttribute("user", userjoinedTeam.getUser());
			if (userjoinedTeam.getTeam() != null) {
				request.getSession().setAttribute("loginteam", userjoinedTeam.getTeam().get(0));
				request.getSession().setAttribute("teams", userjoinedTeam.getTeam());
			}
		}
		return "hello";
	}

}
