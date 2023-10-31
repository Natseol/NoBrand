package user.domain;

import java.util.Date;

public class UserBean {
	private int id;
	private String name;
	private String userId;
	private String password;
	private String phoneNumber;
	private String emailAddress;
	private String address;
	private Date createAt;
	public UserBean() {};
	public void setId(int id) {
		this.id=id;
	}
	public void setUserId(String userId) {
		this.userId=userId;
	}
	public void setName(String name) {
		this.name=name;
	}
	public void setPassword(String password) {
		this.password=password;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber=phoneNumber;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress=emailAddress;
	}
	public void setAddress(String address) {
		this.address=address;
	}
	public void setDate(Date createAt) {
		this.createAt=createAt;
	}
	public int getId() {
		return id;
	}
	public String getUserId() {
		return userId;
	}
	public String getName() {
		return name;
	}
	public String getPassword() {
		return password;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	
	public String getEmailAddress() {
		return emailAddress;
	}
	public String getAddress() {
		return address;
	}
	public Date getDate() {
		return createAt;
	}
}
