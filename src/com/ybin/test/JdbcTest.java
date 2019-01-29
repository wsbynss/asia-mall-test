package com.ybin.test;

import com.ybin.dao.UserDao;

public class JdbcTest {
	public static void main(String[] args) {
		UserDao dao = new UserDao();
		//dao.findPsswordByAccount("ybin");
		//dao.findUserByAccount("213");
		//System.out.println(check.login("ybin", "123"));
		//dao.addUser("zgwu", "邹国武", "123", "male");
		//dao.changePassword("ybin", "1");
		dao.changeInformation("杨彬", "ybin", "女", "13859461232", "无罪之人,方可安睡", "上海", "青浦");
	}
}
