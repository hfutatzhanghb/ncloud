package cn.cloud.kysq.login.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.cloud.kysq.login.service.ILoginService;
import cn.cloud.kysq.team.entity.TeamUserDTO;

@Controller
public class LoginController {

	@Autowired
	ILoginService loginService;
	
	@RequestMapping(value="login/login.do")
	public String login(HttpServletRequest request, @RequestParam(value = "email") String email,
			@RequestParam(value = "password") String password) {

		TeamUserDTO teamUserDTO = loginService.login(email, password);
		if (teamUserDTO != null) {
			request.getSession().setAttribute("user", teamUserDTO.getUser());
			if (teamUserDTO.getTeam() != null) {
				request.getSession().setAttribute("loginteam", teamUserDTO.getTeam().get(0));
				request.getSession().setAttribute("teams",teamUserDTO.getTeam() );
			}
		}
		return "team-manager";
	}
	
	@RequestMapping(value="login1.do")
	public String login1(HttpServletRequest request, @RequestParam(value = "email") String email,
			@RequestParam(value = "password") String password) {

		TeamUserDTO teamUserDTO = loginService.login(email, password);
		if (teamUserDTO != null) {
			request.getSession().setAttribute("user", teamUserDTO.getUser());
			if (teamUserDTO.getTeam() != null) {
				request.getSession().setAttribute("loginteam", teamUserDTO.getTeam().get(0));
				request.getSession().setAttribute("teams",teamUserDTO.getTeam() );
			}
		}
		return "hello";
	}

}
