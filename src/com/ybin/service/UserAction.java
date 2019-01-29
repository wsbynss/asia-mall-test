package com.ybin.service;

import java.util.List;

import com.ybin.bean.User;
import com.ybin.dao.UserDao;

public class UserAction {
	//用户登录,密码验证
	public boolean login(String account, String password) {
		UserDao userDao = new UserDao();
		String psd = userDao.findPsswordByAccount(account);
		System.out.println("psd:" + psd + "--password:" + password);
		if(psd.equals(password)) {
			return true;
		} else {
			return false;
		}	
	}
	//检查用户名是否可用
	public boolean accountCanUse(String account) {
		UserDao userDao = new UserDao();
		User user = userDao.findUserByAccount(account);
		System.out.println(user.getAccount());
		if(user.getAccount()==null) {
			return true;
		} else {
			return false;
		}
	}
	
	//注册用户
	public void registerUser(String account, String name, String password, String gender, String telephone, 
			String remark, String nativeplace, String address, String usertype) {
		UserDao userDao = new UserDao();
		userDao.addUser(account, name, password, gender, telephone, remark, nativeplace, address, usertype);
	}
	
	//修改密码
	public void changePassword(String account, String password) {
		UserDao userDao = new UserDao();
		userDao.changePassword(account, password);
	}
	
	//通过account查找密码
	public String getPassword(String account) {	
		UserDao userDao = new UserDao();
		return userDao.findPsswordByAccount(account); 
	}
	
	//通过账号查找所有用户信息
	public User getUserInfo(String account) {	
		UserDao userDao = new UserDao();
		User user = userDao.findUserByAccount(account);	
		return user;
	}
	
	//修改个人资料
	public void changeInformation(String account, String name, String gender, String telephone, 
			String remark, String nativeplace, String address) {
		UserDao userDao = new UserDao();
		userDao.changeInformation(account, name, gender, telephone, remark, nativeplace, address);
	}
	//修改权限
	public void changeAuthority(String account, String usertype) {
		UserDao userDao = new UserDao();
		userDao.changeAuthority(account, usertype);
	}
	//获取用户列表
	public List<User> getUserList() {
		UserDao userDao = new UserDao();
		return userDao.getUserList();
	}
	//删除用户
	public void deleteUserByAccount(String account) {
		UserDao userDao = new UserDao();
		userDao.deleteUserByAccount(account);
	}
}
