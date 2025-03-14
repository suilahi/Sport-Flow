package User.Web;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import java.io.IOException;
import java.util.logging.LogRecord;
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
@WebFilter({"/Membre.jsp","/Entraineur.jsp"})
public class LoginFilter implements Filter {


        @Override
        public void init(FilterConfig filterConfig) throws ServletException {

        }

        @Override
        public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

            HttpServletRequest req = (HttpServletRequest) request;
            HttpServletResponse res = (HttpServletResponse) response;
            HttpSession session = req.getSession();

            if (req.getSession(false).getAttribute("user") == null) {
                res.sendRedirect("Login.jsp");
            }else{
                chain.doFilter(request, response);
            }
        }

        @Override
        public void destroy() {
            Filter.super.destroy();
        }
}

