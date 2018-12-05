package cn.cloud.kysq.login.service;

import cn.cloud.kysq.login.entity.User;
import cn.cloud.kysq.team.entity.TeamUserDTO;

public interface ILoginService {
	/**
	 * 登录方法
	 * 
	 * @param email
	 * @param password
	 * @return 返回包含user和该user加入的一个team
	 */
	public TeamUserDTO login(String email, String password);

	/**
	 * 注册方法
	 * 
	 * @param user
	 * @return
	 */
	public int signup(User user);
}
