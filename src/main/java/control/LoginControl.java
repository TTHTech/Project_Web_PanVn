package control;

import dao.loginDAO;
import entity.Account;
import entity.User1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginControl", urlPatterns = {"/LoginControl"})
public class LoginControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            loginDAO loginDao = new loginDAO();
            Account account = loginDao.getAccountByEmailAndPassword(email, password);
            User1 user = loginDao.getUserByEmail(email);

            if (account == null) {
                // Đăng nhập không thành công
                response.sendRedirect("Home.jsp?loginError=1");
            }
            if (account != null && account.getRole() == 1){
                // Đăng nhập thành công
                HttpSession session = request.getSession();
                session.setAttribute("user", account);
                session.setAttribute("isLoggedIn", true);
                session.setAttribute("userName", user.getFullName());
                response.sendRedirect("Home.jsp");
            }
            if (account != null && account.getRole() == 2)
            {
                response.sendRedirect("Admin.jsp");
            }
        } catch (Exception e) {
            // Xử lý ngoại lệ (có thể log lỗi hoặc chuyển hướng đến trang lỗi)
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
