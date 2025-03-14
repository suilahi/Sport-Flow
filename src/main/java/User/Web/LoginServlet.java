package User.Web;

import Membre.Dao.MembreDao;
import Membre.Model.Member;
import User.Dao.Dbconnection;
import User.Dao.UserDao;
import User.Model.User;

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

    private MembreDao memberDAO = new MembreDao();

    public LoginServlet() throws SQLException {
    }

    @Override
    public void init() throws ServletException {
        super.init();

        try {
            memberDAO = new MembreDao();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        HttpSession session = req.getSession();


        Member member = MembreDao.loginMember(email,password);
        if (member != null) {
            session.setAttribute("user", member);
            System.out.println("Logiin succes");
            resp.sendRedirect("Membre.jsp");
            return;
        }








        req.setAttribute("errorMessage", "Invalid email or password!");
        req.getRequestDispatcher("login.jsp").forward(req, resp);

    }


}



