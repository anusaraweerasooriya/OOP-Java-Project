package com.games;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


@WebServlet("/GameListServlet")
public class GameListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try (PrintWriter out = response.getWriter()){
			
			GameDBUtil gameL = new GameDBUtil();
			
			String op = request.getParameter("operation");
			
			if (op.equals("game")) {
				
				List<Game> gList = GameDBUtil.getAllGames2();
				Gson json = new Gson();
				String gameList = json.toJson(gList);
				response.setContentType("text/html");
				response.getWriter().write(gameList);
				
			}
			
			if (op.equals("game2")) {
				
				List<Game> gList = GameDBUtil.getAllGames2();
				Gson json = new Gson();
				String gameList = json.toJson(gList);
				response.setContentType("text/html");
				response.getWriter().write(gameList);
				
			}
			
			if (op.equals("game3")) {
				
				List<Game> gList = GameDBUtil.getAllGames2();
				Gson json = new Gson();
				String gameList = json.toJson(gList);
				response.setContentType("text/html");
				response.getWriter().write(gameList);
				
			}
			
			if (op.equals("game4")) {
				
				List<Game> gList = GameDBUtil.getAllGames2();
				Gson json = new Gson();
				String gameList = json.toJson(gList);
				response.setContentType("text/html");
				response.getWriter().write(gameList);
				
			}
			
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
