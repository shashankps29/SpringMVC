<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="model.Student" %>

<!DOCTYPE html>

<html>

<head>

    <title>View Students</title>

    <style>

        body{

            font-family: Arial,sans-serif;

            background:#f4f6f9;

            padding:40px;
        }

        h2{

            color:#1e293b;

            margin-bottom:20px;
        }

        table{

            width:100%;

            border-collapse:collapse;

            background:white;

            box-shadow:0 4px 10px rgba(0,0,0,0.1);
        }

        th{

            background:#2563eb;

            color:white;

            padding:15px;
        }

        td{

            padding:12px;

            border-bottom:1px solid #ddd;

            text-align:center;
        }

        tr:hover{

            background:#f1f5f9;
        }

        /* Success Popup */

        .popup{

            position:fixed;

            top:30px;
            right:30px;

            background:#16a34a;

            color:white;

            padding:18px 30px;

            border-radius:12px;

            font-size:18px;

            box-shadow:0 4px 15px rgba(0,0,0,0.3);

            animation:slideIn 0.5s ease;

            z-index:1000;
        }

        @keyframes slideIn{

            from{

                transform:translateX(100%);
                opacity:0;
            }

            to{

                transform:translateX(0);
                opacity:1;
            }
        }

    </style>

</head>

<body>

<%
    String success =
            (String) request.getAttribute("success");
%>

<h2>All Students</h2>

<table>

    <tr>

        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Course</th>

    </tr>

<%

    List<Student> students =
            (List<Student>)
                    request.getAttribute("students");

    if(students != null){

        for(Student s : students){

%>

<tr>

    <td><%= s.getId() %></td>

    <td><%= s.getName() %></td>

    <td><%= s.getEmail() %></td>

    <td><%= s.getCourse() %></td>

</tr>

<%
        }
    }
%>

</table>


</body>

</html>