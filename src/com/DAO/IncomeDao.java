package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Config.DBConnection;
import com.POJO.IncomePOJO;

public class IncomeDao {
	Connection con=DBConnection.getConnect();
	public boolean addIncome(IncomePOJO i)
	{
		String sql="insert into income (income,incomeType,incomeDate,userEmail)values (?,?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, i.getIncome());
			ps.setString(2, i.getIncomeType());
			ps.setString(3, i.getIncomeDate());
			ps.setString(4, i.getUserEmail());
			int i1=ps.executeUpdate();
			if(i1>0)
			{
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;

	}
	public boolean deletIncome(String email)
	{
		String sql="delete from income where email=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, email);
			int i2=ps.executeUpdate();
			if(i2>0)
			{
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public List<IncomePOJO> getIncomeList(String userEmail)
	{
		String sql="select * from income where userEmail=?";
		List<IncomePOJO> li=new ArrayList<IncomePOJO>();
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, userEmail );
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				IncomePOJO i=new IncomePOJO();
				i.setIncomeId(rs.getInt(1));
				i.setIncome(rs.getInt(2));
				i.setIncomeType(rs.getString(3));
				i.setIncomeDate(rs.getString(4));
				li.add(i);
			}
			return li;
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	
}
