package dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.Product;
import model.User;


public class AdminProductSearchDao extends Database {

	public ResultSet results;
	private static Connection connection;
	
	public AdminProductSearchDao() throws ClassNotFoundException, SQLException {
				InputStream inputStream = getClass().getResourceAsStream("property.txt");
				
				Properties prop = new Properties();
				try {
					prop.load(inputStream);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				String username = prop.getProperty("username");
				String driver  = prop.getProperty("driver");
				String server = prop.getProperty("server");
				String password = prop.getProperty("password");
				Class.forName(driver);
				   connection =
						  DriverManager.getConnection(server, username, password);		   
	}

	
	
	
	public void doRead() {
		try {
			String query = "select * from product";
			PreparedStatement ps = connection.prepareStatement(query);
			results = ps.executeQuery();
			
		} catch (SQLException ex) {
			ex.printStackTrace();
			Logger.getLogger(AdminProductSearchDao.class.getName()).log(Level.SEVERE, "Error");
		}
	}
	
	public void doReadUsername(String serialno) {
		try {
			
			String query;
			if (serialno.isEmpty()) {
				doRead();
				return;
				
			} else {
				query = "select * from product where serialno = ?";
			}
			
			
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setString(1, serialno);
			results = ps.executeQuery();
			
		} catch (SQLException ex) {
			ex.printStackTrace();
			Logger.getLogger(AdminProductSearchDao.class.getName()).log(Level.SEVERE, "Error");
		}
	}
	
	public String getHTMLTable() {
		String table = "";
		table += "<table class=\"table\">"
				+ "<thead>"
				+ "<tr>"
				+ "<th scope=\"col\">Serial Number</th>"
				+ "<th scope=\"col\">Product Name</th>"
				+ "<th scope=\"col\">Model</th>"
				+ "</tr>"
				+ "</thead>"
				+ "<tbody>";
		
		try {
			while(this.results.next()) {
				Product p = new Product();
				p.setSerialno(results.getString("serialno"));
				p.setProductname(results.getString("productname"));
				p.setModel(results.getString("model"));
				
				table += "<tr>"
						+ "<td>"
						+ p.getSerialno()
						+ "</td>"
						+ "<td>"
						+ p.getProductname()
						+ "</td>"
						+ "<td>"
						+ p.getModel()
						+ "</td>"
				;
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
			Logger.getLogger(AdminProductSearchDao.class.getName()).log(Level.SEVERE, "Error");
		}
		
		table += "</tbody>"
				+ "</table>";
		
		return table;
		
	}

	
	
}
