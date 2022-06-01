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

import model.Claim;
import model.UserProduct;

public class ClaimDao {
	private static Connection connection;
	private ResultSet results;

	public ClaimDao() throws ClassNotFoundException, SQLException {

		InputStream inputStream = getClass().getResourceAsStream("property.txt");

		Properties prop = new Properties();
		try {
			prop.load(inputStream);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String username = prop.getProperty("username");
		String driver = prop.getProperty("driver");
		String server = prop.getProperty("server");
		String password = prop.getProperty("password");
		Class.forName(driver);
		connection = DriverManager.getConnection(server, username, password);
	}

	public void doReadClaim(String serialno) {
		try {
			String query = "Select * from claim where serialno = ?;";
			PreparedStatement ps = (PreparedStatement) connection.prepareStatement(query);
			ps.setString(1, serialno);
			this.results = ps.executeQuery();
		} catch (SQLException e) {
			java.util.logging.Logger.getLogger(UserProductDao.class.getName()).log(Level.SEVERE,
					"Cannot Establish Connection");
		}
	}

	public String getHTMLTable() throws SQLException {
		String tableClaim = "";
		tableClaim += "<table class='table table-bordered' style='width:100%'>";
		tableClaim +=  "<thead style='background-color:#e0ebeb'>";
		tableClaim +=   "<tr>";
		tableClaim +=  "<th>Date Of Claim</th>";
		tableClaim +=  "<th>Description</th>";
		tableClaim +=  "<th>Approval Status</th>";
		tableClaim +=  "</thead>";
		if (this.results == null) {
			return "<p>no claim</p>";
		} else {
			while (this.results.next()) {
				Claim claim = new Claim();
				claim.setUsername(this.results.getString("username"));
				claim.setSerialno(this.results.getString("serialno"));
				claim.setDateofclaim(this.results.getDate("dateofclaim"));
				claim.setDescriptions(this.results.getString("description"));
				claim.setApprovalstatus(this.results.getInt("approvalstatus"));
				tableClaim += "<tr>";
				tableClaim += "<td>";
				tableClaim += claim.getDateofclaim();
				tableClaim += "</td>";
				tableClaim += "<td>";
				tableClaim += claim.getDescriptions();
				tableClaim += "</td>";
				tableClaim += "<td>";
				tableClaim += claim.getApprovalstatus();
				tableClaim += "</td>";
				tableClaim += "</tr>";
			}
			tableClaim += "</table>";
		}
		return tableClaim;

	}
}
