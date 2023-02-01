package test;

import java.io.Serializable;

public class UserRecordBean implements Serializable{
	private String userId;
	private String userName;
	private String password;
	private String mail;

	// 普通にsetterとgetterがあるアレです
	// ユーザレコード1件分、登録や更新に扱うデータ1件分のクラス
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}

}
