package com.user;

import java.io.IOException;


import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bundles.Bundle;
import com.bundles.BundleDBUtil;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		
		String userName = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		
		if ("admin123".equals(userName) && "admin123".equals(password)) {

			
			try{
				
				
				HttpSession session = request.getSession();
				String user = request.getParameter("uid");
				session.setAttribute("user", user);
				String user2 = request.getParameter("pass");
				session.setAttribute("user2", user2);
				
				
				
				List<User> usDetails = UserDBUtil.validate(userName,password);
				request.setAttribute("usDetails", usDetails);
				
			
				
			}catch(Exception e) {
				
				e.printStackTrace();
			}
				
				RequestDispatcher dis = request.getRequestDispatcher("adminaccount.jsp");
				dis.forward(request, response);
				
				
		
		}else{
			
			try {
				
				HttpSession session = request.getSession();
				String user = request.getParameter("uid");
				session.setAttribute("user", user);
				String user2 = request.getParameter("pass");
				session.setAttribute("user2", user2);
		
				List<User> usDetails = UserDBUtil.validate(userName,password);
				request.setAttribute("usDetails", usDetails);
			
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
	}

}
