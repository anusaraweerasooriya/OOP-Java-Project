package com.bundles;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.user.DBConnect;




public class BundleDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static PreparedStatement pstmt = null;


	
	
	//Insert Bundle
	public static boolean insertBundle(String creatorId, String name, String details, String price,String game1, String game2, String game3, String game4, String image) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			
			
			String sql = "insert into bundle(id,creator_id,name,description,price,game_id_1,game_id_2,game_id_3,game_id_4,image_source)"
					+ " values(0,'"+creatorId+"','"+name+"','"+details+"','"+price+"','"+game1+"','"+game2+"','"+game3+"','"+game4+"','"+image+"')";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				
				isSuccess = true;
				
			}else {
				
				isSuccess = false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	//bundle list
	public static List<Bundle> BundleList() {
		
		  ArrayList<Bundle> bundleList=new ArrayList<>();
		
		  try {
			  
			  con = DBConnect.getConnection();
			  pstmt=con.prepareStatement("select * from bundle");
			  rs= pstmt.executeQuery();
			  
			  
			  while (rs.next()) {
				  
				  Bundle bundle =new Bundle();
			  
				  bundle.setbId(rs.getInt("id"));
				  bundle.setCreatorId(rs.getInt("creator_id"));
				  bundle.setbName(rs.getString("name"));
				  bundle.setbDetails(rs.getString("description"));
				  bundle.setPrice(rs.getDouble("price"));
				  bundle.setGame1(rs.getInt("game_id_1"));
				  bundle.setGame2(rs.getInt("game_id_2"));
				  bundle.setGame3(rs.getInt("game_id_3"));
				  bundle.setGame4(rs.getInt("game_id_4"));
				  bundle.setbImg(rs.getString("image_source"));
	
				  bundleList.add(bundle);
			  }
			  
		  } catch (Exception e) {
		    
		    e.printStackTrace();
		  }
		  
		  return bundleList;
	}
	
	//Edit Bundle
	public boolean editBundle(Bundle bundle) {
		con = DBConnect.getConnection();
		String sql = "update bundle set name=?, description=?, price=?,"
				+ " game_id_1=?, game_id_2=?, game_id_3=?, game_id_4=?, image_source=?  where id=? ";
		
		int i = 0;
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, bundle.getbName());
			pstmt.setString(2, bundle.getbDetails());
			pstmt.setDouble(3, bundle.getPrice());
			pstmt.setInt(4, bundle.getGame1());
			pstmt.setInt(5, bundle.getGame2());
			pstmt.setInt(6, bundle.getGame3());
			pstmt.setInt(7, bundle.getGame4());
			pstmt.setString(8, bundle.getbImg());
			pstmt.setInt(9, bundle.getbId());
			
		    i = pstmt.executeUpdate();
		    
		} catch (SQLException e) {
		      
			e.printStackTrace();
		}
		
		if (i == 0) {
			
			return false;
			
		} else {
			
		    return true;
		}
		    
	}
	
	public void deleteBundle(int id) {
		con = DBConnect.getConnection();
		String sql = "delete from bundle where id=?";
		
		try {
			con = DBConnect.getConnection();
			pstmt = con.prepareStatement(sql);
		    pstmt.setInt(1, id);
		    pstmt.executeUpdate();
		    
		} catch (SQLException e) {
		      
		      e.printStackTrace();
		}
	}	
	
	
	
	
	
}