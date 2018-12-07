package cn.cloud.kysq.team.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import cn.cloud.kysq.login.entity.User;

@Repository
public class UserDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	/**
	 * 根据用户名返回User实体
	 * @param username
	 * @return
	 */
	public User selectUserByUserName(String username) {

		String sql = "select username,email from users where username = ?";
		User user = jdbcTemplate.queryForObject(sql, new Object[] { username }, new MyUserRowMapper());
		return user;
	}

	class MyUserRowMapper implements RowMapper<User> {

		@Override
		public User mapRow(ResultSet rs, int rowNum) throws SQLException {
			User user = new User();
			user.setUsername(rs.getString("username"));
			user.setEmail(rs.getString("email"));
			return user;
		}

	}
}
