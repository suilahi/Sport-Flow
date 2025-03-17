package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbconnection {
    private static final String URL = "jdbc:mysql://localhost:3306/sport_Flow?useSSL=false";
    private static final String USER = "root";
    private static final String PASSWORD = "root";


    // Use Singleton to ensure one connection instance
    public static Connection getConnection() {
          Connection connection=null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(URL, USER, PASSWORD);
                System.out.println("Database connection established successfully.");
            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
                System.err.println("Failed to establish database connection.");
            }

        return connection;
    }
}
