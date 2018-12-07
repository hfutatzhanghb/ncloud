package cn.cloud.kysq.team.entity;

/**
 * 申请加入团队的消息实体类
 * @author zhb
 *
 */
public class JoinTeamMsg {

	private String fromusername; // 发消息的人
	private String tousername; // 收消息的人
	private Integer ishandle; // 是否处理了，未处理0，处理1。  默认值为0未处理
	private String msgcontent; // 消息内容

	public JoinTeamMsg() {
	}



	public String getFromusername() {
		return fromusername;
	}

	public void setFromusername(String fromusername) {
		this.fromusername = fromusername;
	}

	public String getTousername() {
		return tousername;
	}

	public void setTousername(String tousername) {
		this.tousername = tousername;
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
		return "JoinTeamMsg [fromusername=" + fromusername + ", tousername=" + tousername + ", ishandle=" + ishandle
				+ ", msgcontent=" + msgcontent + "]";
	}
}
