package com.ybin.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import java.sql.PreparedStatement;
import com.ybin.bean.User;

public class UserDao {
	
	static final String driver = "com.mysql.jdbc.Driver";
	static final String url = "jdbc:mysql://localhost:3306/test?characterEncoding=utf8&amp;useSSL=false";
	static final String dbuser = "root";
	static final String dbpsd = "root";
	
	Connection conn = null;
	Statement stmt = null;
	
	//通过id查找用户
	public User findUserByAccount(String account) {
		User user = new User();
		try {
			Class.forName(driver);
			conn = (Connection)DriverManager.getConnection(url, dbuser, dbpsd);
			stmt = conn.createStatement();
			String sql = "select * from tbl_user where account = '" + account + "'";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				user.setAccount(rs.getString("account"));
				user.setName(rs.getString("name"));
				user.setPassword(rs.getString("password"));
				user.setGender(rs.getString("gender"));
				user.setTelephone(rs.getString("telephone"));
				user.setRemark(rs.getString("remark"));
				user.setNativeplace(rs.getString("nativeplace"));
				user.setAddress(rs.getString("address"));
				user.setUsertype(rs.getString("usertype"));
			}
			System.out.println("account=" + user.getAccount() + "name=" + user.getName()
								+"password=" + user.getPassword() + "gender=" + user.getGender()
								+";telephone=" + user.getTelephone() + ";remark=" + user.getRemark()
								+";nativeplace=" + user.getNativeplace() + ";address=" + user.getAddress()
								+";usertype=" + user.getUsertype());
			rs.close();
			stmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(stmt!=null){
					stmt.close();
				}
			} catch(SQLException e) {
				
			}
			try {
				if(conn != null) conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return user;
	}
	
	//通过账号查密码
	public String findPsswordByAccount(String account) {
		String password = "";
		try {
			Class.forName(driver);
			conn = (Connection)DriverManager.getConnection(url, dbuser, dbpsd);
			stmt = (Statement)conn.createStatement();
			String sql = "select password from tbl_user where account = '" + account + "'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {			
				password = rs.getString(1);
			}
			System.out.println("用户" + account + "的密码是:" + password);
			rs.close();
			stmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(stmt!=null){
					stmt.close();
				}
			} catch(SQLException e) {
				
			}
			try {
				if(conn != null) conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return password;
	}
	
	//添加用户
	public void addUser(String account, String name, String password, String gender, String telephone, 
			String remark, String nativeplace, String address, String usertype ){
		try {
			Class.forName(driver);
			conn = (Connection)DriverManager.getConnection(url, dbuser, dbpsd);
			stmt = (Statement)conn.createStatement();
			String sql = "insert into tbl_user set account = '" + account + "', name = '" + name + "', password = '"+ password 
					+ "', gender = '" + gender + "', telephone = '" + telephone + "', remark = '" + remark 
					+ "', nativeplace = '" + nativeplace + "', address = '" + address + "', usertype ='" + usertype + "'";
			boolean rs = stmt.execute(sql);	
			
			stmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(stmt!=null){
					stmt.close();
				}
			} catch(SQLException e) {
				
			}
			try {
				if(conn != null) conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//修改密码
	public void changePassword(String account, String password) {
		try {
			Class.forName(driver);
			conn = (Connection)DriverManager.getConnection(url, dbuser, dbpsd);
			stmt = (Statement)conn.createStatement();
			String sql = "update tbl_user set password = '" +
					password + "' where account = '" + account + "'";
			boolean rs = stmt.execute(sql);	
			
			stmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(stmt!=null){
					stmt.close();
				}
			} catch(SQLException e) {
				
			}
			try {
				if(conn != null) conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//修改个人资料
	public void changeInformation(String account, String name, String gender, String telephone, 
			String remark, String nativeplace, String address) {
		try {
			Class.forName(driver);
			conn = (Connection)DriverManager.getConnection(url, dbuser, dbpsd);
			stmt = (Statement)conn.createStatement();
			String sql = "update tbl_user set name = '" + name + "', gender = '" + gender + "', telephone = '" + telephone + "', remark = '" + remark 
					+ "', nativeplace = '" + nativeplace + "', address = '" + address + "' where account = '" + account + "'";
			boolean rs = stmt.execute(sql);	
			
			stmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(stmt!=null){
					stmt.close();
				}
			} catch(SQLException e) {
				
			}
			try {
				if(conn != null) conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//权限控制(修改权限)
	public void changeAuthority(String account, String usertype) {
		try {
			Class.forName(driver);
			conn = (Connection)DriverManager.getConnection(url, dbuser, dbpsd);
			stmt = (Statement)conn.createStatement();
			String sql = "update tbl_user set usertype = '" + usertype + "' where account = '" + account + "'";
			boolean rs = stmt.execute(sql);	
			
			stmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(stmt!=null){
					stmt.close();
				}
			} catch(SQLException e) {
				
			}
			try {
				if(conn != null) conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//获取用户列表
	public List<User> getUserList() {
		List<User> userlist = new ArrayList<User>();
		try {
			Class.forName(driver);
			conn = (Connection)DriverManager.getConnection(url, dbuser, dbpsd);
			stmt = (Statement)conn.createStatement();
			String sql = "select * from tbl_user";
			ResultSet rs = stmt.executeQuery(sql);	
			while(rs.next()) {
				User user = new User();
				user.setAccount(rs.getString("account"));
				user.setName(rs.getString("name"));
				user.setPassword(rs.getString("password"));
				user.setGender(rs.getString("gender"));
				user.setTelephone(rs.getString("telephone"));
				user.setRemark(rs.getString("remark"));
				user.setNativeplace(rs.getString("nativeplace"));
				user.setAddress(rs.getString("address"));
				user.setUsertype(rs.getString("usertype"));
				userlist.add(user);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(stmt!=null){
					stmt.close();
				}
			} catch(SQLException e) {
				
			}
			try {
				if(conn != null) conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return userlist;	
	}
	
	//删除用户
	public void deleteUserByAccount(String account) {
		try {
			Class.forName(driver);
			conn = (Connection)DriverManager.getConnection(url, dbuser, dbpsd);
			String sql = "delete from tbl_user where id = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, account);
			ps.executeUpdate();	
			ps.close();
			stmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(stmt!=null){
					stmt.close();
				}
			} catch(SQLException e) {
				
			}
			try {
				if(conn != null) conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
