<html>

<head>

    <title>Add Student</title>

    <style>

        body{
            font-family: Arial,sans-serif;
            background:#f4f6f9;
            padding:40px;
        }

        h2{
            color:#1e293b;
        }

        form{
            background:white;
            width:350px;
            padding:30px;
            border-radius:12px;
            box-shadow:0 4px 10px rgba(0,0,0,0.1);
        }

        input[type="text"]{
            width:100%;
            padding:10px;
            margin-top:5px;
            border:1px solid #ccc;
            border-radius:6px;
        }

        input[type="submit"]{
            background:#2563eb;
            color:white;
            border:none;
            padding:12px 20px;
            border-radius:8px;
            cursor:pointer;
            margin-top:15px;
        }

        input[type="submit"]:hover{
            background:#1d4ed8;
        }

        /* Error Popup */

        .error-popup{
            position:fixed;
            top:30px;
            right:30px;
            background:#dc2626;
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
    String error = (String) request.getAttribute("error");
%>

<h2>Add Student</h2>

<form action="saveStudent" method="post">

    Name:
    <input type="text" name="name"/>

    <br><br>

    Email:
    <input type="text" name="email"/>

    <br><br>

    Course:
    <input type="text" name="course"/>

    <br><br>

    <input type="submit" value="Save Student"/>

</form>

</body>

</html>