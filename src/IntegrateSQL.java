import java.beans.Statement;
import java.sql.SQLException;

import com.sun.corba.se.pept.transport.Connection;

public class IntegrateSQL {

	public static void viewTable(Connection con, String dbName)
		    throws SQLException {
			
			/*
		    Statement stmt = null;
		    String query = "select COF_NAME, SUP_ID, PRICE, " +
		                   "SALES, TOTAL " +
		                   "from " + dbName + ".COFFEES";
		    try {
		        stmt = con.createStatement();
		        ResultSet rs = stmt.executeQuery(query);
		        while (rs.next()) {
		            String coffeeName = rs.getString("COF_NAME");
		            int supplierID = rs.getInt("SUP_ID");
		            float price = rs.getFloat("PRICE");
		            int sales = rs.getInt("SALES");
		            int total = rs.getInt("TOTAL");
		            System.out.println(coffeeName + "\t" + supplierID +
		                               "\t" + price + "\t" + sales +
		                               "\t" + total);
		        }
		    } catch (SQLException e ) {
		        System.out.printlm(e);
		    } finally {
		        if (stmt != null) { stmt.close(); }
		    }
		    */
		}
	
	
}
