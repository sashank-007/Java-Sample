package DatabaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class databaseConnection {

    private Connection con =null;

    public databaseConnection() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            String DB_URL = "jdbc:mysql://localhost:3306/sample";
            String DB_USER = "root";
            String DB_PASSWORD = "8Characterss!";
            con= DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            System.out.println("Database Connected!!!");
        } catch (ClassNotFoundException | SQLException c){
            c.printStackTrace();
        }
        System.out.println(con);
    }

    public static void main(String[] args) {
        databaseConnection databaseConnection = new databaseConnection();
    }

    public PreparedStatement getPreparedStatement(String query) {

        PreparedStatement pstm = null;
        try {
            pstm = con.prepareStatement(query);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return pstm;
    }
}
