<html>
<head>
</head>
<body>
<%
    String user = (String) session.getAttribute("user");

    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<h2>Welcome <%= user %></h2>

<a href="logout">Logout</a>
</body>
</html>