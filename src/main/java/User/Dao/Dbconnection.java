package User.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Dbconnection {
    private static final String URL = "jdbc:mysql://localhost:3306/sport_Flow?useSSL=false";
    private static final String USER = "root";
    private static final String PASSWORD = "root";



    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

}
