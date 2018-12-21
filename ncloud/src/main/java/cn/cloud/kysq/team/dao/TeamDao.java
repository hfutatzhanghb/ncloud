package cn.cloud.kysq.team.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
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
		int update = jdbctemplate.update(sql, new Object[] { team.getTeamName(), creator.getUsername(), t,
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
	public boolean insertUserToTeam(User user, String teamName, String TeamID) {
		String sql = "insert into user_team_relationship (username,useremail,teamname,teamID) values(?,?,?,?)";
		int update = jdbctemplate.update(sql, new Object[] { user.getUsername(), user.getEmail(), teamName, TeamID });
		if (update != 0) {
			return true;
		} else {
			return false;
		}

	}

	/**
	 * 查询User的所相关的Team
	 */
	public List<Team> selectALLTeamsByUser(User user) {
		String sql = "select * from team where team_name in "
				+ "(select teamname from user_team_relationship where useremail = ?)";
		List<Team> teamlist = jdbctemplate.query(sql, new Object[] { user.getEmail() }, new TeamRowMapper());
		return teamlist;

	}

	public Team selectOneTeamCreatedByUser(User user, Team team) {
		String sql = "select team_name,team_creatorName from team where team_name = ? and  team_creatorName= ?";

		Team teamResult = null;
		try {
			teamResult = jdbctemplate.queryForObject(sql, new Object[] { team.getTeamName(), user.getEmail() },
					new RowMapper<Team>() {

						@Override
						public Team mapRow(ResultSet rs, int rowNum) throws SQLException {
							Team team1 = new Team();
							team1.setTeamName(rs.getString(1));
							team1.setTeamCreatorName(rs.getString(2));
							return team1;
						}
					});
			return teamResult;
		} catch (EmptyResultDataAccessException e) {
			return teamResult;
		}

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
	public List<Map<String, Object>> selectTeamByTeamName(String distTeamname) {
		String sql = "select * from team where team_name= ?";
		List<Map<String, Object>> query = jdbctemplate.queryForList(sql, new Object[] { distTeamname });
		return query;
	}

	public Team selectTeamByTeamName1(String distTeamname) {
		String sql = "select * from team where team_name= ?";
		List<Team> query = jdbctemplate.query(sql, new Object[] { distTeamname }, new TeamRowMapper());
		if (query.isEmpty()) {
			return null;
		} else {
			return query.get(0);
		}
	}

	/**
	 * 向 申请加团队消息表`team_join_msg`添加一条记录，申请加入团队
	 */
	public boolean insertTeamJoinMsg(String fromusername, String touseremail, String msgcontent, String teamname) {
		String sql = "insert into team_join_msg (fromusername, touseremail, msgcontent,teamname) values(?,?,?,?)";
		try {
			int updatestatus = jdbctemplate.update(sql,
					new Object[] { fromusername, touseremail, msgcontent, teamname });
			if (updatestatus != 0) {
				return true;
			} else {
				return false;
			}
		} catch (DataAccessException e) {
			return false;
		}

	}

	/**
	 * 处理 申请加入团队的消息,也即改变`team_join_msg`的ishandle字段
	 */
	public boolean UpdateTeamJoinMsg(String currUserEmail, String fromUsername, String teamName) {

		String sql = "update team_join_msg set ishandle = 1 where ishandle =0 and fromusername = ? and touseremail=? and teamname=?";
		try {
			int updatestatus = jdbctemplate.update(sql, new Object[] { fromUsername, currUserEmail, teamName });
			if (updatestatus != 0) {
				return true;
			} else {
				return false;
			}

		} catch (DataAccessException e) {
			return false;
		}
	}

	/**
	 * 从`team_join_msg`获得所有申请加入团队的用户名字
	 */
	public List<User> selectAllWantToJoinTeamUserName(String teamCreatorEmail, String teamName) {

		String sql = "select fromusername from team_join_msg where touseremail =? and ishandle = 0 and teamname=?";
		List<User> wantToJoinList = jdbctemplate.query(sql, new Object[] { teamCreatorEmail, teamName },
				new RowMapper<User>() {

					@Override
					public User mapRow(ResultSet rs, int rowNum) throws SQLException {
						User user = new User();
						user.setUsername(rs.getString(1));
						return user;
					}
				});
		return wantToJoinList;
	}

	/**
	 * 从 `team`中删除team信息
	 */
	public boolean deleteTeamByTeamID(String teamID) {

		String sql = "delete from team where team_ID = ?";
		try {
			int update = jdbctemplate.update(sql, new Object[] { teamID });
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	/**
	 * 从 `user_team_relationship`表中删除一个team的所有关系
	 */
	public boolean deleteUserandTeamRelationshipByTeamID(String teamID) {
		String sql = "delete from team where team_ID = ?";
		try {
			int update = jdbctemplate.update(sql, new Object[] { teamID });
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	public List<String> selectTeamNameLike(String blurTeamname) {
		String sql = "select team_name from team where team_name like ?";
		List<String> queryForList = jdbctemplate.queryForList(sql, new Object[] { "%" + blurTeamname + "%" },
				String.class);
		return queryForList;
	}

	public String selectEmailByUserName(String tousername) {
		String sql = "select email from users where username = ?";
		String userEmail = jdbctemplate.queryForObject(sql, new Object[] { tousername }, String.class);
		return userEmail;
	}

	public List<Map<String, Object>> selectTeamListByLimit(Integer pageNumber, Integer pageSize) {
		int start = (pageNumber - 1) * pageSize;
		String sql = "select * from team limit ?,? ";
		List<Map<String, Object>> queryForList = jdbctemplate.queryForList(sql, new Object[] { start, pageSize });
		System.out.println(queryForList);
		return queryForList;
	}

	public int SelectTeamCounts() {
		String sql = "select count(*) from team";
		int teamTotalCounts = jdbctemplate.queryForObject(sql, Integer.class);
		return teamTotalCounts;
	}
}
