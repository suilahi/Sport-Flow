package Entraineur.Web;

import Entraineur.Dao.EntraineurDAO;
import Entraineur.Model.Entraineur;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/EntraineurServlet")
public class EntraineurServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            EntraineurDAO entraineurDAO = new EntraineurDAO();
            List<Entraineur> entraineurs = entraineurDAO.getAllEntraineurs();
            System.out.println(entraineurs);

            RequestDispatcher dispatcher = req.getRequestDispatcher("Coach.jsp");
            req.setAttribute("entraineurs", entraineurs);
            dispatcher.forward(req, resp);


        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("errorMessage", "Error fetching members: " + e.getMessage());
        }
    }
}