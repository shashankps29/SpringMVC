<html>

<head>

    <title>Delete Student</title>

    <style>

        body{

            font-family:Arial,sans-serif;

            background:#f4f6f9;

            padding:40px;
        }

        h2{

            color:#1e293b;

            margin-bottom:20px;
        }

        form{

            background:white;

            width:350px;

            padding:30px;

            border-radius:12px;

            box-shadow:0 4px 10px rgba(0,0,0,0.1);
        }

        input{

            width:100%;

            padding:10px;

            margin-top:10px;

            border:1px solid #ccc;

            border-radius:6px;
        }

        button{

            background:#dc2626;

            color:white;

            border:none;

            padding:12px;

            margin-top:20px;

            cursor:pointer;

            border-radius:8px;

            width:100%;
        }

        button:hover{

            background:#b91c1c;
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
    String success =
            (String) request.getAttribute("success");

    String error =
            (String) request.getAttribute("error");
%>

<h2>Delete Student</h2>

<form action="deleteStudent"
      method="post">

    Enter Student ID:

    <input type="number"
           name="id"
           required/>

    <button type="submit">

        Delete Student

    </button>

</form>


</body>

</html>