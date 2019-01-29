package com.ybin.bean;

public class User {
	
	private String account;
	private String name;
	private String password;
	private String gender;
	private String telephone;
	private String remark;
	private String nativeplace;
	private String address;
	private String usertype;
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	public User() {
		
	}
	public User( String account, String name, String password, String gender, String telephone, 
			String remark, String nativeplace, String address, String usertype) {
		
		this.account = account;
		this.name = name;
		this.password = password;
		this.gender = gender;
		this.telephone = telephone;
		this.remark = remark;
		this.nativeplace = nativeplace;
		this.address = address;
		this.usertype = usertype;
	}
	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getNativeplace() {
		return nativeplace;
	}

	public void setNativeplace(String nativeplace) {
		this.nativeplace = nativeplace;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
}
