package cn.cloud.kysq.team.entity;

/**
 * 申请加入团队的消息实体类
 * 
 * @author zhb
 *
 */
public class JoinTeamMsg {

	private String fromusername; // 发消息的人
	private String touseremail; // 收消息的人
	private Integer ishandle; // 是否处理了，未处理0，处理1。 默认值为0未处理
	private String msgcontent; // 消息内容
	private String teamname;

	public JoinTeamMsg() {
	}

	public String getFromusername() {
		return fromusername;
	}

	public void setFromusername(String fromusername) {
		this.fromusername = fromusername;
	}

	public Integer getIshandle() {
		return ishandle;
	}

	public void setIshandle(Integer ishandle) {
		this.ishandle = ishandle;
	}

	public String getMsgcontent() {
		return msgcontent;
	}

	public void setMsgcontent(String msgcontent) {
		this.msgcontent = msgcontent;
	}

	@Override
	public String toString() {
		return "JoinTeamMsg [fromusername=" + fromusername + ", touseremail=" + touseremail + ", ishandle=" + ishandle
				+ ", msgcontent=" + msgcontent + "]";
	}

	public String getTouseremail() {
		return touseremail;
	}

	public void setTouseremail(String touseremail) {
		this.touseremail = touseremail;
	}

	public String getTeamname() {
		return teamname;
	}

	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}
}
