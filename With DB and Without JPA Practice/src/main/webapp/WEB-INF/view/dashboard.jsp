<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <title>Dashboard</title>

    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family: Arial, sans-serif;
        }

        body{
            background:
            linear-gradient(to right,#0f172a,#1e293b);

            color:white;
            min-height:100vh;
        }

        /* Navbar */

        .navbar{

            display:flex;
            justify-content:space-between;
            align-items:center;

            padding:20px 50px;

            background:rgba(255,255,255,0.05);

            backdrop-filter:blur(10px);
        }

        .logo{

            font-size:28px;
            font-weight:bold;
            color:#38bdf8;
        }

        .nav-links{

            display:flex;
            align-items:center;
        }

        .nav-links a{

            text-decoration:none;
            color:white;

            margin-left:20px;

            padding:10px 18px;

            border-radius:8px;

            transition:0.3s;
        }

        .login-btn{
            background:#2563eb;
        }

        .register-btn{
            background:#16a34a;
        }

        .logout-btn{
            background:#dc2626;
        }

        .nav-links a:hover{
            opacity:0.8;
        }

        /* Main Section */

        .main{

            text-align:center;

            margin-top:80px;

            padding:20px;
        }

        .main h1{

            font-size:50px;
            margin-bottom:20px;
        }

        .main h3{

            font-size:28px;
            margin-bottom:15px;
        }

        .username{
            color:#38bdf8;
        }

        .main p{

            color:#cbd5e1;
            font-size:18px;
            margin-bottom:50px;
        }

        /* Cards */

        .container{

            width:90%;
            margin:auto;

            display:grid;

            grid-template-columns:
                    repeat(auto-fit,minmax(250px,1fr));

            gap:30px;

            margin-bottom:50px;
        }

        .card{

            background:rgba(255,255,255,0.08);

            padding:35px;

            border-radius:18px;

            box-shadow:0 4px 15px rgba(0,0,0,0.3);

            transition:0.3s;

            text-align:center;
        }

        .card:hover{

            transform:translateY(-8px);
        }

        .card h2{

            margin-bottom:15px;
            color:#38bdf8;
        }

        .card p{

            margin-bottom:25px;
            color:#e2e8f0;
        }

        .card a{

            text-decoration:none;

            background:#2563eb;

            color:white;

            padding:12px 22px;

            border-radius:8px;

            display:inline-block;
        }

        .card a:hover{
            background:#1d4ed8;
        }

    </style>

</head>

<body>

<!-- Navbar -->

<div class="navbar">

    <div class="logo">

        Student Management System

    </div>

    <div class="nav-links">

        <%
            if(request.getAttribute("userName") == null){
        %>

        <a href="login" class="login-btn">

            Login

        </a>

        <a href="register" class="register-btn">

            Register

        </a>

        <%
            } else {
        %>

        <span
                style="
                color:white;
                font-size:18px;
                margin-right:20px;
                font-weight:bold;">

            Welcome,
            ${userName}

        </span>

        <a href="login" class="logout-btn">

            Logout

        </a>

        <%
            }
        %>

    </div>

</div>

<!-- Main Section -->

<div class="main">

    <h1>

        Welcome to Dashboard

    </h1>

    <h3>

        <%
            if(request.getAttribute("userName") != null){
        %>

        Hello,
        <span class="username">

            ${userName}

        </span>

        <%
            }
        %>

    </h3>


</div>

<%
    if(request.getAttribute("userName") != null){
%>

<!-- Feature Cards -->

<div class="container">

    <!-- Add Student -->

    <div class="card">

        <h2>Add Student</h2>

        <p>

            Add new students into database.

        </p>

        <a href="addStudent">

            Open

        </a>

    </div>


    <!-- View Student -->

    <div class="card">

        <h2>View Students</h2>

        <p>

            Display all student records.

        </p>

        <a href="viewAll">

            Open

        </a>

    </div>


    <!-- Update Student -->

    <div class="card">

        <h2>Update Student</h2>

        <p>

            Modify existing student details.

        </p>

      <a href="updateStudentPage">

            Open

        </a>

    </div>


    <!-- Delete Student -->

    <div class="card">

        <h2>Delete Student</h2>

        <p>

            Remove student from database.

        </p>

        <a href="deleteStudentPage">


            Open

        </a>

    </div>

</div>

<%
    }
%>

<div class="card">

    <h2>Search Student</h2>

    <p>

        Search students by ID, Name or Email.

    </p>

    <a href="search">

        Open

    </a>

</div>
</body>

</html>