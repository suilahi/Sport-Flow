package Membre.Web;

import Membre.Dao.MembreDao;
import Membre.Model.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/addmembre")
public class AddMemberServlet  extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String dateNaissance = req.getParameter("dateNaissance");
        String sport = req.getParameter("sport");

        Member member = new Member(username, email, password, dateNaissance, sport);

        MembreDao membreDao = new MembreDao();
        try {
            membreDao.ajouterMember(member);
            resp.sendRedirect("MemberServlet");
        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("errorMessage", "Erreur lors de l'ajout du membre.");
            req.getRequestDispatcher("error.jsp").forward(req, resp);
        }

    }
}
