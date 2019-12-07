package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.userDao;
import com.POJO.userpojo;

@WebServlet("/userServlet")
public class userServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	userDao ud=new userDao();
	userpojo u=new userpojo();
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String Name=request.getParameter("Name");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String phonenum=request.getParameter("phonenum");
		
		u.setName(Name);
		u.setEmail(email);
		u.setContact(phonenum);
		u.setPassword(pass);
		
		 boolean i=ud.addUser(u);
		 System.out.println(u);
		 if(i)
		 {
			 response.sendRedirect("login.jsp");
		 }
		 else
		 {
			 System.out.println("fail");
		 }



	}

}
