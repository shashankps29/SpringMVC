<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <title>Student Management System</title>

    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:Arial,sans-serif;
        }

        body{

            height:100vh;

            background:
            linear-gradient(to right,#0f172a,#1e293b);

            display:flex;

            justify-content:center;

            align-items:center;

            color:white;
        }

        .container{

            text-align:center;

            background:rgba(255,255,255,0.08);

            padding:50px;

            border-radius:20px;

            width:450px;

            box-shadow:0 4px 20px rgba(0,0,0,0.4);
        }

        h1{

            margin-bottom:20px;

            color:#38bdf8;
        }

        p{

            margin-bottom:35px;

            color:#cbd5e1;
        }

        a{

            text-decoration:none;

            padding:12px 25px;

            border-radius:10px;

            margin:10px;

            color:white;

            display:inline-block;
        }

        .login{

            background:#2563eb;
        }

        .register{

            background:#16a34a;
        }

        a:hover{
            opacity:0.8;
        }

    </style>

</head>

<body>

<div class="container">

    <h1>

        Student Management System

    </h1>

    <p>

    </p>

    <a href="login" class="login">

        Login

    </a>

    <a href="register" class="register">

        Register

    </a>

</div>

</body>

</html>