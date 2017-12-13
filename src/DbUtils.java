import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.Vector;

import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;


public class DbUtils {
    public static TableModel resultSetToTableModel(ResultSet rs, Connection connection) {
        try {
            ResultSetMetaData metaData = rs.getMetaData();
            int numberOfColumns = metaData.getColumnCount();
            Vector columnNames = new Vector();

            columnNames.addElement("TITULO");
            // Get the column names
            for (int column = 0; column < numberOfColumns; column++) {
                columnNames.addElement(metaData.getColumnLabel(column + 1));
            }

            // Get all rows.
            Vector rows = new Vector();

            while (rs.next()) {
                Vector newRow = new Vector();

                try {
                	String codigo = rs.getString("video");
                    String titulos = "SELECT titulo FROM video WHERE codigo='"+codigo+"'";
                	Statement stmt2 = connection.createStatement();
                	ResultSet rs_titulos = stmt2.executeQuery(titulos);
                	rs_titulos.next();
                    newRow.addElement(rs_titulos.getObject(1));
                } catch (Exception ex) {
                	JOptionPane.showMessageDialog(null, "Erro na tabela: "+ex.getMessage());
                }
                
                for (int i = 1; i <= numberOfColumns; i++) {
                    newRow.addElement(rs.getObject(i));
                }

                rows.addElement(newRow);
            }

            return new DefaultTableModel(rows, columnNames);
        } catch (Exception e) {
            e.printStackTrace();

            return null;
        }
    }
}