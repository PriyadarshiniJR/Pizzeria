package DAO;
import Bean.item;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class itemDao{
	final String JDBC_DRIVER="com.mysql.jdbc.Driver";
	final String DB_URL="jdbc:mysql://localhost:3306/test";

	final String USER="root";
	final String PASS="ilovemymomsasi";

	public int getItem(item[] i, String category, String vnv){
		

		Connection conn=null;
		Statement stmt=null;

		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(DB_URL,USER,PASS);
			stmt=conn.createStatement();

			int iter=0;
			String sql="select * from items where category='"+category+"' and vnv="+vnv;

			ResultSet rs=stmt.executeQuery(sql);

			while(rs.next()){
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String content = rs.getString("content");
				int price = rs.getInt("price");
				String img = rs.getString("image");

				i[iter].setName(name);
				i[iter].setContent(content);
				i[iter].setPrice(price);
				i[iter].setId(id);
				i[iter].setImage(img);
				iter++;
			}

			rs.close();
			stmt.close();
			conn.close();
			return iter;
		}catch(Exception e){
			e.printStackTrace();
		}
		return -1;
	}


	public int getDetails(item i){
		int id = i.getId();
		
		Connection conn=null;
		Statement stmt=null;

		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(DB_URL,USER,PASS);
			stmt=conn.createStatement();


			String sql="select * from items where id="+id;

			ResultSet rs=stmt.executeQuery(sql);

			while(rs.next()){
				String name = rs.getString("name");
				int price = rs.getInt("price");
				String img = rs.getString("image");
				int vnv = rs.getInt("vnv");

				i.setName(name);
				i.setPrice(price);
				i.setVnv(vnv);
				i.setImage(img);
				
			return 1;
			}

			rs.close();
			stmt.close();
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return 0;
	}
}
