package com.bundles;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/BundleInsert")
public class BundleInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String creatorId = request.getParameter("cId");
		String bundleName = request.getParameter("name");
		String description = request.getParameter("descp");
		String game1 = request.getParameter("game_1");
		String game2 = request.getParameter("game_2");
		String game3 = request.getParameter("game_3");
		String game4 = request.getParameter("game_4");
		String price = request.getParameter("bPrice");
		String image = request.getParameter("img");
		
		boolean isTrue;
		
		isTrue = BundleDBUtil.insertBundle(creatorId,bundleName, description,price, game1,game2,game3,game4,image);
		
		if(isTrue==true) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("manageBundles.jsp");
			dispatcher.forward(request, response);
			
			
		}else {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}
