package Membre.Web;

import Membre.Dao.MembreDao;
import Membre.Model.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UpdateMember")
public class UpdateMemberServlet extends HttpServlet {
    private MembreDao memberDAO ;
    @Override
    public void init() throws ServletException {
        memberDAO = new MembreDao();
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String dateNaissance = req.getParameter("dateNaissance");
        String sport =req.getParameter("sport");

        Member member = new Member(id,username,email,dateNaissance,sport);
        boolean isUpdated = memberDAO.updateMember(member);

        if(isUpdated){
            resp.sendRedirect("MemberList");
        } else {
            resp.sendRedirect("MemberList");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }


}