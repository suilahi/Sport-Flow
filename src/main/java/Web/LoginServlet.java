package Web;

import Dao.Dbconnection;
import Dao.UserDao;
import Model.User;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        Connection connection= null;
        connection = Dbconnection.getConnection();
        UserDao userDao = new UserDao(connection);

        try {
            User user = UserDao.getUserByEmail(email);

            if (user != null && user.getPassword().equals(password)) {
                HttpSession session = req.getSession();
                session.setAttribute("user", user);
            } else {
                resp.sendRedirect("Login.jsp");
            }
        }catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("index.jsp");
        }
    }


}

