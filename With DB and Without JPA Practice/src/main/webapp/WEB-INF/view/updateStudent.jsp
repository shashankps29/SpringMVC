<%@ page import="model.Student" %>

<%

    Student student =
            (Student)
                    request.getAttribute("student");

%>

<html>

<head>

    <title>Update Student</title>

</head>

<body>

<h2>Update Student</h2>

<form action="updateStudent"
      method="post">

    <input type="hidden"
           name="id"
           value="<%= student.getId() %>"/>

    Name:

    <input type="text"
           name="name"
           value="<%= student.getName() %>"/>

    <br><br>

    Email:

    <input type="text"
           name="email"
           value="<%= student.getEmail() %>"/>

    <br><br>

    Course:

    <input type="text"
           name="course"
           value="<%= student.getCourse() %>"/>

    <br><br>

    <input type="submit"
           value="Update Student"/>

</form>

</body>

</html>