package cn.cloud.kysq.team.dao.impl;

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
import cn.cloud.kysq.team.dao.ITeamDao;
import cn.cloud.kysq.team.entity.Team;

@Repository
public class TeamDaoImpl implements ITeamDao {

	@Autowired
	private JdbcTemplate jdbctemplate;

	@Override
	public int insertTeam(User creator, Team team) {
		String sql = "insert into team (team_name, team_creatorName, team_creatorTime, team_description, team_company) values(?,?,?,?,?) ";

		Timestamp t = new Timestamp(new Date().getTime());
		int update = jdbctemplate.update(sql, new Object[] { team.getTeamName(), creator.getEmail(), t,
				team.getTeamDescription(), team.getTeamCompany() });

		return update;
	}

	@Override
	public int insertUserToTeam() {
		//
		return 0;
	}

	@Override
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
			team.setTeamID(rs.getInt(1));
			team.setTeamName(rs.getString(2));
			team.setTeamCreatorName(rs.getString(3));
			team.setTeamCreatorTime(rs.getDate(4));
			return team;
		}
	}
}
