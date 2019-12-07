package com.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.userDao;
import com.POJO.userpojo;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	userpojo u=new userpojo();
	userDao ud=new userDao();
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession();
		session.invalidate();
		response.sendRedirect("index.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String username=request.getParameter("name");
		String password=request.getParameter("pass");
		System.out.println(username);
		System.out.println(password);
		if(username !=null && username.equals("admin@123") && password.equals("admin"))
		{

			session.setAttribute("adminName",username );
			response.sendRedirect("index.jsp");
		}
		else {

			userpojo u=ud.getLogin(username, password);
			System.out.println("result"+u);
			if(u!=null ) {	
				if(u!=null && u.getEmail()!=null && u.getEmail().equals(username) && u.getPassword().equals(password)) {
					session.setAttribute("userName",username );
					response.sendRedirect("index.jsp");
				}

				else {
					request.setAttribute("lmsg", "Invalid UserName And Password");
					RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
					rd.include(request, response);

				}
			}
		}

	}

}
