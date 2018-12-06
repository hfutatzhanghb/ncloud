package cn.cloud.kysq.team.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import cn.cloud.kysq.login.entity.User;
import cn.cloud.kysq.team.entity.Team;

/**
 * 用于实现创建团队，加入团队的Dao
 * 
 * @author zhb
 *
 */

@Repository
public class TeamDao {

	@Autowired
	private JdbcTemplate jdbctemplate;

	/**
	 * 插入一个团队，向`team`表中插入一条数据
	 * 
	 * @return 插入成功返回true，否则返回false
	 */
	public boolean insertTeam(User creator, Team team) {
		String sql = "insert into team (team_name, team_creatorName, team_creatorTime, team_description, team_company) values(?,?,?,?,?) ";

		Timestamp t = new Timestamp(new Date().getTime());
		int update = jdbctemplate.update(sql, new Object[] { team.getTeamName(), creator.getEmail(), t,
				team.getTeamDescription(), team.getTeamCompany() });

		if (update != 0) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 向`user_team_relationship` 中插入一条数据
	 * 
	 * @return 插入成功返回true，否则返回false
	 */
	public boolean insertUserToTeam(User user, String teamName) {
		String sql = "insert into user_team_relationship (username,useremail,teamname) values(?,?,?)";
		int update = jdbctemplate.update(sql, new Object[] { user.getUsername(), user.getEmail(), teamName });
		if (update != 0) {
			return true;
		} else {
			return false;
		}

	}

	/**
	 * 查询User的所有Team
	 */
	public List<Team> selectALLTeamsByUser(User user) {
		String sql = "select * from team where team_name in "
				+ "(select teamname from user_team_relationship where useremail = ?)";
		List<Team> teamlist = jdbctemplate.query(sql, new Object[] { user.getEmail() }, new TeamRowMapper());
		return teamlist;

	}

	class TeamRowMapper implements RowMapper<Team> {
		@Override
		public Team mapRow(ResultSet rs, int rowNum) throws SQLException {
			Team team = new Team();
			team.setTeamID(rs.getInt("team_ID"));
			team.setTeamName(rs.getString("team_name"));
			team.setTeamCreatorName(rs.getString("team_creatorName"));
			team.setTeamCreatorTime(rs.getDate("team_creatorTime"));
			team.setTeamCategory(rs.getString("team_category"));
			team.setTeamDescription(rs.getString("team_description"));
			team.setTeamCompany(rs.getString("team_company"));
			team.setTeamDeleteflag((rs.getInt("team_deleteflag")));
			return team;
		}
	}

	/**
	 * 根据Team名称查询出Team实体
	 * 
	 * @param distTeamname
	 *            Team名称
	 * @return
	 */
	public Team selectTeamByTeamName(String distTeamname) {
		String sql = "select * from team where team_name= ?";
		List<Team> query = jdbctemplate.query(sql, new Object[] { distTeamname }, new TeamRowMapper());
		if (query.isEmpty()) {
			return null;
		} else {
			return query.get(0);
		}
	}
}
