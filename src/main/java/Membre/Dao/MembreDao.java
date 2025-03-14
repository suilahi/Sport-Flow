package Membre.Dao;

import Membre.Model.Member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static User.Dao.Dbconnection.getConnection;

public class MembreDao {
    private  Connection connection;
    public MembreDao()throws SQLException{
        this.connection=connection;
    }
    public void addMember(int userId, String sport, String dateDeNaissance) {
        String sql = "INSERT INTO member (user_id, sport, date_de_naissance) VALUES (?, ?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, userId);
            stmt.setString(2, sport);
            stmt.setString(3, dateDeNaissance);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static Member loginMember(String email, String password)  {

        Member member = null;
        try(Connection con = getConnection()){
            String query = "SELECT * FROM users WHERE email=? AND password=?";
            PreparedStatement stmnt = con.prepareStatement(query);
            stmnt.setString(1, email);
            stmnt.setString(2, password);
            ResultSet rs = stmnt.executeQuery();

            if(rs.next()) {
                member = new Member();
                member.setId(rs.getInt("id"));
                member.setName(rs.getString("name"));
            }

        }catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return member;
    }

    public Member getMember(int idMember) {
        Member member = null;
        String sql = "SELECT * FROM member WHERE id_member = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, idMember);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                member = new Member(rs.getInt("id_member"), rs.getInt("user_id"), rs.getString("sport"), rs.getString("date_de_naissance"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return member;
    }


    public void updateMember(int idMember, String sport, String dateDeNaissance) {
        String sql = "UPDATE member SET sport = ?, date_de_naissance = ? WHERE id_member = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, sport);
            stmt.setString(2, dateDeNaissance);
            stmt.setInt(3, idMember);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteMember(int idMember) {
        String sql = "DELETE FROM member WHERE id_member = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, idMember);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
