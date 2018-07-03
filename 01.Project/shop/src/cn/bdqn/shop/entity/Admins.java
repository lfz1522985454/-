package cn.bdqn.shop.entity;

import java.sql.Date;

public class Admins {
private int adminId;
private String adminName;
private String email;
private String passWord;
private Date createTime;
private Date lastLoginTime;
private String lastIp;
public int getAdminId() {
	return adminId;
}
public void setAdminId(int adminId) {
	this.adminId = adminId;
}
public String getAdminName() {
	return adminName;
}
public void setAdminName(String adminName) {
	this.adminName = adminName;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassWord() {
	return passWord;
}
public void setPassWord(String passWord) {
	this.passWord = passWord;
}
public Date getCreateTime() {
	return createTime;
}
public void setCreateTime(Date createTime) {
	this.createTime = createTime;
}
public Date getLastLoginTime() {
	return lastLoginTime;
}
public void setLastLoginTime(Date lastLoginTime) {
	this.lastLoginTime = lastLoginTime;
}
public String getLastIp() {
	return lastIp;
}
public void setLastIp(String lastIp) {
	this.lastIp = lastIp;
}
public Admins(int adminId, String adminName, String email, String passWord, Date createTime, Date lastLoginTime,
		String lastIp) {
	super();
	this.adminId = adminId;
	this.adminName = adminName;
	this.email = email;
	this.passWord = passWord;
	this.createTime = createTime;
	this.lastLoginTime = lastLoginTime;
	this.lastIp = lastIp;
}
public Admins() {
	super();
	// TODO Auto-generated constructor stub
}


}
