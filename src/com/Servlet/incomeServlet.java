package com.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.DAO.IncomeDao;

import com.POJO.IncomePOJO;

@WebServlet("/incomeServlet")
public class incomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	IncomeDao id = new IncomeDao();
	IncomePOJO i=new IncomePOJO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
	String action=request.getParameter("action");
	if(action!=null && action.equals("delete"))
	{
		String i=request.getParameter("iId");
		boolean b=id.deletIncome(i);
		if(b)
		{
			response.sendRedirect("incomeServlet");
		}
	} 
else if (action!=null && action.equals("edit")) 
	{
		String nm=request.getParameter("iId");
		boolean u1=id.updateIncome(i);
		session.setAttribute("u", u1);
		response.sendRedirect("updateuser.jsp");
	}
	else
	{
		String email=(String)session.getAttribute("userName");
		List<IncomePOJO> li=id.getIncomeList(email);
		session.setAttribute("incomelist", li);
		response.sendRedirect("incomeList.jsp");

	}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
	String email=(String)session.getAttribute("userName");
		int income=Integer.parseInt(request.getParameter("income"));
		String incomeType=request.getParameter("incomeType");
		String incomeDate=request.getParameter("incomeDate");
		
		i.setUserEmail(email);
		i.setIncome(income);
		i.setIncomeType(incomeType);
		i.setIncomeDate(incomeDate);
		
		
 boolean i2=id.addIncome(i);
		 
		 if(i2)
		 {
			 response.sendRedirect("addIncome.jsp");
		 }
		 else
		 {
			 System.out.println("fail");
		 }
	}

}
