package dao;

import context.DBContext;
import entity.Account;
import entity.User;
import entity.User1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class loginDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public Account getAccountByEmailAndPassword(String email, String password) {
        Account account = null;
        String query = "SELECT * FROM Account WHERE email = ? AND password = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
                account = new Account(
                        rs.getInt("accountID"),
                        rs.getString("userName"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getInt("role"),
                        rs.getInt("userID")
                );
            }
        } catch (Exception e) {
            // Handle exception
        } finally {
            // Close resources (Connection, PreparedStatement, ResultSet)
            // This should be done in a 'finally' block to ensure resources are closed even if an exception occurs.
            closeResources();
        }
        return account;
    }
    public User1 getUserByEmail(String email) {
        User1 user = null;
        String query = "SELECT * FROM User WHERE email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            if (rs.next()) {
                user = new User1(
                        rs.getInt("userID"),
                        rs.getString("fullName"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getDate("created_at"),
                        rs.getDate("updated_at")
                );
            }
        } catch (Exception e) {
            // Handle exception
        } finally {
            closeResources();
        }
        return user;
    }
    private void closeResources() {
        try {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (Exception e) {
            // Handle exception
        }
    }
}
