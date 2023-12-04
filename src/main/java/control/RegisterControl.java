package control;

import context.DBContext;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

@WebServlet("/register")
public class RegisterControl extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Lấy dữ liệu từ form
        String fullName = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Kiểm tra xem email đã tồn tại chưa
        if (isEmailExist(email)) {
            response.sendRedirect("Home.jsp?registerError=1");
            return;
        };

        // Thực hiện lưu dữ liệu vào cơ sở dữ liệu
        try {
            Connection connection = new DBContext().getConnection();
            saveUser(connection, fullName, email);
            saveAccount(connection, email, password);
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Hiển thị thông báo đăng ký thành công
        response.sendRedirect("Home.jsp?registerSuccess=1");
    }

    private boolean isEmailExist(String email) {
        try {
            Connection connection = new DBContext().getConnection();
            String query = "SELECT COUNT(*) FROM User WHERE email=?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, email);
                preparedStatement.execute();
                java.sql.ResultSet resultSet = preparedStatement.getResultSet();
                if (resultSet.next()) {
                    int count = resultSet.getInt(1);
                    return count > 0; // Trả về true nếu có ít nhất một email trùng khớp
                }
            }
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    private void saveUser(Connection connection, String fullName, String email) throws SQLException {
        String query = "INSERT INTO User (fullName, email, created_at, updated_at) VALUES (?, ?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, fullName);
            preparedStatement.setString(2, email);
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            preparedStatement.setTimestamp(3, timestamp);
            preparedStatement.setTimestamp(4, timestamp);
            preparedStatement.executeUpdate();
        }
    }

    private void saveAccount(Connection connection, String email, String password) throws SQLException {
        String query = "INSERT INTO Account (userName, email, password, role, userID) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, generateUserName(email));
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, password);
            preparedStatement.setInt(4, 1);
            // Lấy userID từ bảng User dựa trên email
            int userID = getUserId(connection, email);
            preparedStatement.setInt(5, userID);
            preparedStatement.executeUpdate();
        }
    }

    private int getUserId(Connection connection, String email) throws SQLException {
        String query = "SELECT userID FROM User WHERE email=?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, email);
            preparedStatement.execute();
            java.sql.ResultSet resultSet = preparedStatement.getResultSet();
            if (resultSet.next()) {
                return resultSet.getInt("userID");
            }
            return -1; // Nếu không tìm thấy người dùng
        }
    }

    private String generateUserName(String email) {
        return email.split("@")[0];
    }
}
