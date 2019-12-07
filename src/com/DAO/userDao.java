package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Config.DBConnection;

import com.POJO.userpojo;

public class userDao {
	Connection con=DBConnection.getConnect();
	
	public boolean addUser(userpojo u)
	{
		String sql="insert into newuser values(?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getContact());
	        ps.setString(4, u.getPassword());
			int i=ps.executeUpdate();
		
			if(i>0)
			{
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
		
	}
	public List<userpojo> getUserList()
	{
		String sql="select * from newuser";
		List <userpojo>li=new ArrayList<userpojo>();
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			userpojo u=new userpojo();
			u.setName(rs.getString(1));
			u.setEmail(rs.getString(2));
			u.setContact(rs.getString(3));
			u.setPassword(rs.getString(4));
			li.add(u);
		}
		
			return li;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public List<userpojo> getUserListById()
	{
		String sql="select * from newuser where email=?";
		List <userpojo>li=new ArrayList<userpojo>();
		try {
			PreparedStatement ps=con.prepareStatement(sql);
		
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			userpojo u=new userpojo();
			u.setName(rs.getString(1));
			u.setEmail(rs.getString(2));
			u.setContact(rs.getString(3));
			u.setPassword(rs.getString(4));
			li.add(u);
		}
		
			return li;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public boolean deleteUser(String email)
	{
		String sql="delete from newuser where email=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
		int i=ps.executeUpdate();
			if(i>0)
			{
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
		
	}
	public boolean updateUser(userpojo u )
	{
		String sql="update newuser set name=?,phoneNum =?,password=? where email=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getContact());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getEmail());
		int i=ps.executeUpdate();
			if(i>0)
			{
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
		
	}
	public userpojo getLogin(String username,String password) {
		String sql="SELECT email,password FROM newuser  where email=? and password=?";
		userpojo u=new userpojo();
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,username);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				u.setEmail(rs.getString(1));
				u.setPassword(rs.getString(2));
			}
			return u;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return u;
		
	}
	
	public static void main(String[] args) {
		userpojo u=new userpojo();
		u.setContact("222");u.setEmail("s");u.setName("kk");u.setPassword("2");
		System.out.println(u);
		System.out.println(new userDao().addUser(u));
	}
}
