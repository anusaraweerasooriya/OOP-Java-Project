package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateAdminServlet")
public class UpdateAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("usid");
		String firstName = request.getParameter("fName");
		String lastName = request.getParameter("lName");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String gender = request.getParameter("gender");
		String dateOfBirth = request.getParameter("dob");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = UserDBUtil.updateadmin(id, firstName, lastName, email, mobile, gender, dateOfBirth, userName, password);
		
		
		if(isTrue == true) {
			
			List<User> userDetails = UserDBUtil.getUserDetails(id);
			request.setAttribute("usDetails", userDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("adminaccount.jsp");
			dis.forward(request, response);
			
		}else {
			
			List<User> userDetails = UserDBUtil.getUserDetails(id);
			request.setAttribute("usDetails", userDetails);
			 
			RequestDispatcher dis = request.getRequestDispatcher("adminaccount.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
