package User.Web;

import Entraineur.Dao.EntraineurDAO;
import Entraineur.Model.Entraineur;
import Membre.Dao.MembreDao;
import Membre.Model.Member;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private MembreDao memberDAO = new MembreDao();
    private EntraineurDAO entraineurDAO = new EntraineurDAO();


    @Override
    public void init() throws ServletException {
        super.init();

        memberDAO = new MembreDao();
        entraineurDAO = new EntraineurDAO();


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        HttpSession session = req.getSession();


        Member member = memberDAO.loginMember(email,password);
        if (member != null) {
            session.setAttribute("user", member);
            System.out.println("Logiin succes");
            resp.sendRedirect("Membre.jsp");
            return;
        }


        Entraineur entraineur = entraineurDAO.loginEntraineur(email,password);


        if (entraineur != null) {
            session.setAttribute("user", entraineur);
            System.out.println("Logiin succes");
            resp.sendRedirect("Coach.jsp");
            return;
        }






        req.setAttribute("errorMessage", "Invalid email or password!");
        req.getRequestDispatcher("Login.jsp").forward(req, resp);

    }

}
