package cn.cloud.kysq.login.dao;


import java.util.List;

import cn.cloud.kysq.login.entity.User;
import cn.cloud.kysq.team.entity.Team;

public interface ILoginDao {

	/**
	 * 注册接口
	 * 
	 * @param user
	 * @return
	 */
	public int insertUser(User user);

	/**
	 * 登录接口
	 * 
	 * @param email
	 * @param password
	 * @return
	 */
	public User findUser(String email, String password);
	
	/**
	 * 根据用户名返回加入的科研团队实体列表
	 * @param username
	 * @return
	 */
	public List<Team> findTeamsByUsername(String username);
	
}
