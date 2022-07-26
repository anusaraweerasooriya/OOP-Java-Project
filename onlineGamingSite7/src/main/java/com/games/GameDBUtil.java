package com.games;

import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.user.DBConnect;


public class GameDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null; //PreparedStatement pst;
	private static ResultSet rs = null;
	
	
	public static List<Game> getAllGames(){
		List<Game> glist = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from game order by name";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
				Game game = new Game();
				game.setgId(rs.getInt("game_id"));
				game.setDevId(rs.getInt("dev_id"));
				game.setgName(rs.getString("name"));
				game.setPrice(rs.getDouble("price"));
				game.setgDetails(rs.getString("description"));
				glist.add(game);
				
				
			}
				
		}catch(SQLException ex) {
			ex.printStackTrace();
			
		}
		
		
		return glist;
	
	}
	
	public static List<Game> getAllGames2(){
		List<Game> glist = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from game order by name";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
				Game game = new Game();
				game.setgId(rs.getInt("game_id"));
				game.setgName(rs.getString("name"));
				glist.add(game);
				
				
			}
				
		}catch(SQLException ex) {
			ex.printStackTrace();
			
		}
		
		
		return glist;
	
	}
	
}
