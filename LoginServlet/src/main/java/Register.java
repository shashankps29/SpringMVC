

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.HashMap;

public class Register extends HttpServlet {
    public static HashMap<String, String> users = new HashMap<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        users.put(user, pass);
        response.sendRedirect("Login.jsp");
    }
}