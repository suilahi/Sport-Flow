package User.Dao;

import java.sql.Connection;

import User.Model.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {

    public UserDao(Connection connection) {

    }

    public static void addUser(User user) throws SQLException {
        String query = "INSERT INTO users (name,email,password, role) VALUES (?, ?, ?, ?)";
        try (Connection conn = Dbconnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.setString(4, user.getRole());
            stmt.executeUpdate();
        }
    }

    public static User getUserByEmail(String email) throws SQLException {
        String query = "SELECT * FROM users WHERE email = ?";
        try (Connection conn = Dbconnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new User(
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("role")
                );
            }
        }
        return null;
    }

}
