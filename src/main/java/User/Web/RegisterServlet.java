package User.Web;

import Entraineur.Dao.EntraineurDAO;
import Membre.Dao.MembreDao;
import Membre.Model.Member;
import Entraineur.Model.Entraineur  ;
import User.Dao.UserDao;
import User.Model.User;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet{
    @Override
    public void init() throws ServletException {
        super.init();
        MembreDao memberDAO = new MembreDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String role = req.getParameter("role");

        if(role.equals("member")){
            String username = req.getParameter("username");
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            String dateNaissance = req.getParameter("dateNaissance");
            String sport =req.getParameter("sport");

            Member member =new Member(username,email,password,dateNaissance,sport);
            MembreDao memberDAO = new MembreDao();

            memberDAO.ajouterMember(member);


        }else if(role.equals("entraineur")){

            String username = req.getParameter("username");
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            String specialite = req.getParameter("specialite");


            Entraineur entraineur =new Entraineur(username,email,password,specialite);
            EntraineurDAO entraineurDAO = new EntraineurDAO();

            entraineurDAO.ajouterEntraineur(entraineur);


            resp.sendRedirect("Login.jsp");

        }


    }

}
