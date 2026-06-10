<%@ page import="model.Student" %>

<html>

<head>
    <title>Student Details</title>
</head>

<body>

<h2>Student Details</h2>

<%

    Student student =
            (Student) request.getAttribute("student");

    if(student != null){

%>

    ID:
    <%= student.getId() %>

    <br><br>

    Name:
    <%= student.getName() %>

    <br><br>

    Class:
    <%= student.getCla() %>

    <br><br>

    Phone:
    <%= student.getPhoneno() %>

    <br><br>

    Parent Name:
    <%= student.getParentName() %>

    <br><br>

    Marks:
    <%= student.getMarks() %>

<%

    } else {

%>

    Student Not Found

<%

    }

%>

</body>

</html>