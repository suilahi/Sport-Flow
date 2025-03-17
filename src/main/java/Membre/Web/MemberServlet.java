package Membre.Web;

import Membre.Dao.MembreDao;
import Membre.Model.Member;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/MemberServlet")
public class MemberServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            MembreDao memberDAO = new MembreDao();
            List<Member> members = memberDAO.getAllMembers();

            request.setAttribute("members", members);
            RequestDispatcher dispatcher = request.getRequestDispatcher("Membre.jsp");
            dispatcher.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Erreur lors de la récupération des membres: " + e.getMessage());
        }
    }

}
