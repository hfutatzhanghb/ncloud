package cn.cloud.kysq.login.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import cn.cloud.kysq.login.entity.User;
import cn.cloud.kysq.team.entity.Team;

@Repository
public class LoginDao {

	@Autowired
	private JdbcTemplate jdbctemplate;

	/**
	 * 注册接口
	 * 
	 * @param user
	 * @return
	 */
	public int insertUser(User user) {
		String sql = "insert into users(username,password,email) values(?, ?, ?)";
		int updateresult = jdbctemplate.update(sql,
				new Object[] { user.getUsername(), user.getPassword(), user.getEmail() });
		return updateresult;
	}

	/**
	 * 登录接口
	 * 
	 * @param email
	 * @param password
	 * @return
	 */
	public User findUser(String email, String password) {
		String sql = "select * from users where email= ? and password = ? ";

		List<User> queryResult = jdbctemplate.query(sql, new Object[] { email, password }, new UserRowMapper());

		if (queryResult.size() != 0) {
			return queryResult.get(0);
		} else {
			return null;
		}

	}

	/**
	 * 根据用户名返回加入的科研团队实体列表
	 * 
	 * @param username
	 * @return
	 */
	public List<Team> findTeamsByUsername(String username) {
		
		String sql = "select * from team where team_name in "
				+ "(select teamname from user_team_relationship where username = ?)";
		List<Team> result = jdbctemplate.query(sql, new Object[] { username }, new TeamRowMapper());
		return result;
	}

	class UserRowMapper implements RowMapper<User> {

		@Override
		public User mapRow(ResultSet rs, int rowNum) throws SQLException {
			User user = new User();
			user.setUsername(rs.getString("username"));
			user.setPassword(rs.getString("password"));
			user.setEmail(rs.getString("email"));
			user.setRole(rs.getInt("role"));
			user.setDeleteflag(rs.getInt("deleteflag"));
			return user;
		}

	}

	class TeamRowMapper implements RowMapper<Team> {

		@Override
		public Team mapRow(ResultSet rs, int rowNum) throws SQLException {
			Team team = new Team();
			team.setTeamID(rs.getInt(1));
			team.setTeamName(rs.getString(2));
			team.setTeamCreatorName(rs.getString(3));
			team.setTeamCreatorTime(rs.getDate(4));
			return team;
		}

	}
}
