package com.bundles;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BundleManageServlet")
public class BundleManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BundleManageServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		    if (request.getParameter("Action").equals("Edit")) {
		    	
		    	try {
		    		
		    		PrintWriter printWriter = response.getWriter();
		    		response.setContentType("text/html");
					Bundle bundle = new Bundle();
					BundleDBUtil bUtil = new BundleDBUtil();
					  
					bundle.setbId(Integer.parseInt(request.getParameter("bId")));
					  
					bundle.setbName(request.getParameter("bName"));
					bundle.setbDetails(request.getParameter("bDetails"));
					bundle.setPrice(Double.parseDouble(request.getParameter("price")));
					bundle.setGame1(Integer.parseInt(request.getParameter("game1")));
					bundle.setGame2(Integer.parseInt(request.getParameter("game2")));
					bundle.setGame3(Integer.parseInt(request.getParameter("game3")));
					bundle.setGame4(Integer.parseInt(request.getParameter("game4")));
					bundle.setbImg(request.getParameter("bImg"));
					  
					boolean result = bUtil.editBundle(bundle);
					
					if (result==true) {
						
						System.out.println(result);
						RequestDispatcher dispatcher = request.getRequestDispatcher("manageBundles.jsp");
						dispatcher.include(request, response);
						
						printWriter.println("<script type='text/javascript'>");
			    		printWriter.println("alert('Bundle Edit is Successfull!!');");
			    		printWriter.println("location='manageBundles.jsp'");
			    		printWriter.println("</script>");
						
					}else {
						
						RequestDispatcher dispatcher = request.getRequestDispatcher("manageBundles.jsp");
						dispatcher.include(request, response);
						printWriter.println("<script type='text/javascript'>");
			    		printWriter.println("alert('Bundle Edit is Unsuccessfull!!');");
			    		printWriter.println("location='manageBundles.jsp'");
			    		printWriter.println("</script>");
						
					}
				  
		    	} catch (Exception e) {
		    		e.printStackTrace();
		    	} 
		      
		    }
		    
		    
		    if (request.getParameter("Action").equals("Delete")) {
		    	
		    	try {
		    		PrintWriter printWriter = response.getWriter();
		    		Bundle bundle = new Bundle();
		    		BundleDBUtil bUtil = new BundleDBUtil();
		    		bUtil.deleteBundle(Integer.parseInt(request.getParameter("bId")));
		    		RequestDispatcher dispatcher = request.getRequestDispatcher("manageBundles.jsp");
		    		dispatcher.include(request, response);
		    		
		    		printWriter.println("<script type='text/javascript'>");
		    		printWriter.println("alert('Bundle deletion Successful!');");
		    		printWriter.println("location='manageBundles.jsp'");
		    		printWriter.println("</script>");
				  
		    	} catch (Exception e) {
		    		
					e.printStackTrace();
				} 
		      
		    }
		    
	}
}


