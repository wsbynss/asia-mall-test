package com.ybin.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ybin.bean.Order;

public class OrderDao {
	public Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/test?characterEncoding=utf8&amp;useSSL=false";
			String dbuser = "root";
			String dbpsd = "root";
			conn = DriverManager.getConnection(url, dbuser, dbpsd);
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	//分页查找
	public List<Order> find(int page) {
		List<Order> list = new ArrayList<Order>();
		Connection conn = getConnection();
		String sql = "select * from vbak order by vbeln desc limit ?,?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, (page-1)*Order.PAGE_SIZE);
			ps.setInt(2, Order.PAGE_SIZE);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Order order = new Order();
				order.setVbeln(rs.getString("vbeln"));
				order.setAuart(rs.getString("auart"));
				order.setAuatt(rs.getString("auatt"));
				order.setVkbur(rs.getString("vkbur"));
				order.setVkbut(rs.getString("vkbut"));
				order.setVkgrp(rs.getString("vkgrp"));
				order.setVkgrt(rs.getString("vkgrt"));
				order.setVkorg(rs.getString("vkorg"));
				order.setVtext(rs.getString("vtext"));
				order.setZebu(rs.getString("zebu"));
				order.setZebut(rs.getString("zebut"));
				order.setZxnum(rs.getString("zxnum"));
				order.setZxnam(rs.getString("zxnam"));
				list.add(order);
			}
			rs.close();
			ps.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//查询数据总量
	public int findCount() {
		int count = 0;
		Connection conn = getConnection();
		String sql = "select count(*) from vbak";
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) {
				count = rs.getInt(1);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return count;
	}
}
