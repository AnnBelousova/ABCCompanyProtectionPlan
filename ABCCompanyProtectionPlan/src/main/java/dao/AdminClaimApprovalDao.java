package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.Claim;
import model.Product;
import model.User;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;


public class AdminClaimApprovalDao extends Database {

	public ResultSet results;
	
	private static Connection connection;
	
	public AdminClaimApprovalDao() throws ClassNotFoundException, SQLException {
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
	
	public void doUpdate(int approvalstatus, int id) {
		try {
			String query = "update claim set approvalstatus=? where id=?";
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setInt(1, approvalstatus); 
			ps.setInt(2, id);
			ps.executeUpdate();
			ps.close();
			
			
		} catch (SQLException ex) {
			//Logger.getLogger(AddQuery.class.getName()).log(Level.SEVERE, "Error");
			ex.printStackTrace();
		}
		
	}
	
	public void doRead() {
		try {
			String query = "select * from claim where approvalstatus=2";
			PreparedStatement ps = connection.prepareStatement(query);
			results = ps.executeQuery();
			
		} catch (SQLException ex) {
			ex.printStackTrace();
			Logger.getLogger(AdminClaimApprovalDao.class.getName()).log(Level.SEVERE, "Error");
		}
	}
	
	public String getHTMLTable() {
		String table = "";
		table += "<table class=\"table\">"
				+ "<thead>"
				+ "<tr>"
				+ "<th scope=\"col\">Username</th>"
				+ "<th scope=\"col\">Serial Number</th>"
				+ "<th scope=\"col\">Date of Claim</th>"
				+ "<th scope=\"col\">Description</th>"
				+ "<th scope=\"col\"></th>"
				+ "</tr>"
				+ "</thead>"
				+ "<tbody>";
		
		try {
			while(this.results.next()) {
				Claim c = new Claim();
				c.setId(results.getInt("id"));
				c.setUsername(results.getString("username"));
				c.setSerialno(results.getString("serialno"));
				c.setDateofclaim(results.getDate("dateofclaim"));
				c.setDescriptions(results.getString("description"));
				c.setApprovalstatus(results.getInt("approvalstatus"));
				
				table += "<tr>"
						+ "<td>"
						+ c.getUsername()
						+ "</td>"
						+ "<td>"
						+ c.getSerialno()
						+ "</td>"
						+ "<td>"
						+ c.getDateofclaim()
						+ "</td>"
						+ "<td>"
						+ c.getDescriptions()
						+ "</td>"
						+ "<td>"
						+ String.format("<a href=\"AdminClaimApprovalController?approvalstatus=1&id=%d\">Approve</a>", c.getId())
						+ " | "
						+ String.format("<a href=\"AdminClaimApprovalController?approvalstatus=0&id=%d\">Rejected</a>", c.getId())
						
						+ "</td>"
				;
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
			Logger.getLogger(AdminClaimApprovalDao.class.getName()).log(Level.SEVERE, "Error");
		}
		
		table += "</tbody>"
				+ "</table>";
		
		return table;
		
	}

	
	
}
