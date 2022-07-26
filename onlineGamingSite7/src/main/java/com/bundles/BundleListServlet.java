package com.bundles;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.User;
import com.user.UserDBUtil;


@WebServlet("/BundleListServlet")
public class BundleListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public BundleListServlet() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			List<Bundle> bundleList = BundleDBUtil.BundleList();
			request.setAttribute("bundleList", bundleList);
			
			RequestDispatcher dis = request.getRequestDispatcher("manageBundles2.jsp");
			dis.forward(request, response); 
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
