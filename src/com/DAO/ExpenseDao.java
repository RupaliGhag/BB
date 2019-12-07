package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Config.DBConnection;
import com.POJO.ExpensesPOJO;
import com.POJO.userpojo;


public class ExpenseDao {
	Connection con=DBConnection.getConnect();
	public boolean addExpense(ExpensesPOJO e)
	{
		String sql="insert into expense(expense,expenseType,expenseDate,userEmail)values (?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, e.getExpenses());
			ps.setString(2, e.getExpensesType());
			ps.setString(3, e.getExpensesDate());
			ps.setString(4, e.getUserEmail());
			int i1=ps.executeUpdate();
			if(i1>0)
			{
				return true;
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return false;

	}
	public boolean deletExpense(String expenseId)
	{
		System.out.println(expenseId);
		String sql="delete from expense where expenseId=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,expenseId);
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
	public List<ExpensesPOJO> getExpenseList(String userEmail)
	{
		String sql="select * from expense where userEmail=?";
		List<ExpensesPOJO> li=new ArrayList<ExpensesPOJO>();
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, userEmail );
			System.out.println(ps);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				ExpensesPOJO i=new ExpensesPOJO();
				i.setExpenseId(rs.getInt(1));
				i.setExpenses(rs.getInt(2));
				i.setExpensesType(rs.getString(3));
				i.setExpensesDate(rs.getString(4));
				li.add(i);
			}
			System.out.println(li);
			return li;
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public boolean updateExpense(ExpensesPOJO e)
	{
		String sql="update expense set expense=?,expenseType=?,expenseDate=? where expenseId3=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,e.getExpenses());
			ps.setString(2, e.getExpensesType());
			ps.setString(3, e.getExpensesDate());
			ps.setInt(4, e.getExpenseId());
		

		int i=ps.executeUpdate();
			if(i>0)
			{
				return true;
			}
			
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		return false;
		
	}
}
