import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class Login extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String user = request.getParameter("username");
        String pass = request.getParameter("password");

        String storedPass = Register.users.get(user);

        if (storedPass != null && storedPass.equals(pass)) {

            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            response.sendRedirect("dashboard.jsp");

        } else {
            response.sendRedirect("error.jsp");
        }
    }
}