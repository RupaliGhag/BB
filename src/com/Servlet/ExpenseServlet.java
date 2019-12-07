package com.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ExpenseDao;
import com.POJO.ExpensesPOJO;



@WebServlet("/ExpenseServlet")
public class ExpenseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ExpenseDao ed=new ExpenseDao();
	ExpensesPOJO e=new ExpensesPOJO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession();

		String action=request.getParameter("action");
		if(action!=null && action.equals("delete"))
		{
			String e=request.getParameter("eId");
			boolean b=ed.deletExpense(e);
			if(b)
			{
				response.sendRedirect("ExpenseServlet");
			}
		}
		
		else
		{
		String email=(String)session.getAttribute("userName");
		List<ExpensesPOJO> li=ed.getExpenseList(email);
		session.setAttribute("expenselist", li);
		response.sendRedirect("expensesList.jsp");

	}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("userName");

		int expenses=Integer.parseInt(request.getParameter("expenses"));
		String expenseType=request.getParameter("expenseType");
		String expenseDate=request.getParameter("expenseDate");

		e.setUserEmail(email);
		e.setExpenses(expenses);
		e.setExpensesType(expenseType);
		e.setExpensesDate(expenseDate);

	boolean i2=ed.addExpense(e);

		if(i2)
		{
			response.sendRedirect("addExpenses.jsp");
		}
		else
		{
			System.out.println("fail");
		}
	}
}

