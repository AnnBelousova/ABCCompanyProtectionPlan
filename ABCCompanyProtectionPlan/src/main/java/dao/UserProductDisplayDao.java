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

import model.UserProduct;

public class UserProductDisplayDao {
	
	private static Connection connection;
	 private ResultSet results;
	
	 public UserProductDisplayDao( ) throws ClassNotFoundException, SQLException {  

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
	
	public void doReadUserProduct(String usernamecook) {
		 try {
		 String query = "Select * from userproduct where username=?;";
		 PreparedStatement ps = (PreparedStatement)connection.prepareStatement(query);
		 ps.setString(1, usernamecook);
		 this.results = ps.executeQuery();
		 }catch(SQLException e) {
		 java.util.logging.Logger.getLogger(UserProductDao.class.getName()).log(Level.SEVERE, "Cannot Establish Connection");
		 }
	 }
  
    public String getHTMLTable() throws SQLException {
		 String table = "";
		 table += "<table class='table table-bordered' style='width:100%'>"; 
		 table +=  "<thead style='background-color:#e0ebeb'>";
		 table +=   "<tr>";
		 table +=   "<th>Product Name</th>";
		 table +=  "<th>Purshase Date</th>";
		 table +=  "<th>Details</th>";
		 table +=  "</thead>";
		 while(this.results.next()) {
		 UserProduct userproduct = new UserProduct();
		 userproduct.setProductid(this.results.getInt("productid"));
		 userproduct.setUsername(this.results.getString("username"));
		 userproduct.setProductname(this.results.getString("productname"));
		 userproduct.setSerialno(this.results.getString("serialno"));
		 userproduct.setPurchasedate(this.results.getDate("purchasedate"));
			 table += "<tr>";
				table += "<td>";
				table += userproduct.getProductname();
				table += "</td>";
			    table += "<td>";
			    table += userproduct.getPurchasedate();
			    table += "</td>";
			    table += "<td>";
			    table += "<a href=UserProductDetailsController?serialno="+ userproduct.getSerialno()+">Details</a>";
			    table += "</td>";
			    
			 table += "</tr>";  
		 }
		 table += "</table>";
		 return table;
		 }  
 
	}
