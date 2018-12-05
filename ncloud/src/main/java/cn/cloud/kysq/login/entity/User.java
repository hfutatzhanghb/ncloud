package cn.cloud.kysq.login.entity;

/**
 * 用户实体类
 * @author zhb
 *
 */
public class User {

	private String username;
	private String password;
	private String email;
	private Integer role; // 1:代表普通用户；2:代表管理员 , default: 1
	private Integer deleteflag; // 0：用户有效；1:用户无效, default: 0
	
	public User() {
		super();
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getRole() {
		return role;
	}

	public void setRole(Integer role) {
		this.role = role;
	}

	public Integer getDeleteflag() {
		return deleteflag;
	}

	public void setDeleteflag(Integer deleteflag) {
		this.deleteflag = deleteflag;
	}

}
