<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>

    <title>Student Management System</title>

    <style>

        body{
            margin:0;
            padding:0;
            font-family: Arial, sans-serif;
            background:#f4f6f9;
        }

        .navbar{
            background:#1e293b;
            color:white;
            padding:20px;
            text-align:center;
            font-size:28px;
            font-weight:bold;
        }

        .container{
            width:90%;
            margin:auto;
            margin-top:40px;

            display:grid;
            grid-template-columns: repeat(auto-fit,minmax(250px,1fr));
            gap:30px;
        }

        .card{
            background:white;
            padding:30px;
            border-radius:12px;
            box-shadow:0 4px 10px rgba(0,0,0,0.1);

            text-align:center;

            transition:0.3s;
        }

        .card:hover{
            transform:translateY(-5px);
        }

        .card h2{
            margin-bottom:15px;
            color:#1e293b;
        }

        .card p{
            color:gray;
            margin-bottom:20px;
        }

        .btn{
            text-decoration:none;
            background:#2563eb;
            color:white;
            padding:10px 20px;
            border-radius:6px;
            display:inline-block;
        }

        .btn:hover{
            background:#1d4ed8;
        }

    </style>

</head>

<body>

<div class="navbar">

    Student Management System

</div>

<div class="container">

    <!-- Add Student -->

    <div class="card">

        <h2>Add Student</h2>

        <p>
            Register new students into database.
        </p>

        <a href="addStudent" class="btn">

            Open

        </a>

    </div>


    <!-- View Students -->

    <div class="card">

        <h2>View Students</h2>

        <p>
            Display all student records.
        </p>

        <a href="viewStudents" class="btn">

            Open

        </a>

    </div>


    <!-- Update Student -->

    <div class="card">

        <h2>Update Student</h2>

        <p>
            Modify student information.
        </p>

        <a href="#" class="btn">

            Open

        </a>

    </div>


    <!-- Delete Student -->

    <div class="card">

        <h2>Delete Student</h2>

        <p>
            Remove students from database.
        </p>

        <a href="#" class="btn">

            Open

        </a>

    </div>

</div>

</body>

</html>