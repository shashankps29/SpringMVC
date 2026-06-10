<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

    <title>Register</title>

    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:Arial,sans-serif;
        }

        body{

            height:100vh;

            display:flex;

            justify-content:center;

            align-items:center;

            background:linear-gradient(
                    to right,
                    #0f172a,
                    #1e293b
            );
        }

        .register-box{

            width:420px;

            background:white;

            padding:40px;

            border-radius:18px;

            box-shadow:0 8px 25px rgba(0,0,0,0.3);
        }

        h2{

            text-align:center;

            margin-bottom:30px;

            color:#16a34a;
        }

        label{

            font-weight:bold;

            color:#334155;
        }

        input{

            width:100%;

            padding:12px;

            margin-top:8px;

            margin-bottom:20px;

            border:1px solid #cbd5e1;

            border-radius:8px;

            outline:none;
        }

        input:focus{

            border-color:#16a34a;
        }

        button{

            width:100%;

            background:#16a34a;

            color:white;

            border:none;

            padding:12px;

            border-radius:8px;

            cursor:pointer;

            font-size:16px;

            transition:0.3s;
        }

        button:hover{

            background:#15803d;
        }

        .login-link{

            text-align:center;

            margin-top:20px;
        }

        .login-link a{

            text-decoration:none;

            color:#2563eb;

            font-weight:bold;
        }

        .login-link a:hover{

            text-decoration:underline;
        }

        .error{

            color:red;

            text-align:center;

            margin-bottom:10px;
        }

        .success{

            color:green;

            text-align:center;

            margin-bottom:10px;
        }

    </style>

</head>

<body>

<div class="register-box">

    <h2>Create Account</h2>

    <p class="error">${error}</p>

    <p class="success">${message}</p>

    <form action="register"
          method="post">

        <label>Username</label>

        <input type="text"
               name="username"
               placeholder="Enter Username"
               required/>

        <label>Email</label>

        <input type="email"
               name="email"
               placeholder="Enter Email"
               required/>

        <label>Password</label>

        <input type="password"
               name="password"
               placeholder="Enter Password"
               required/>

        <label>Confirm Password</label>

        <input type="password"
               name="confirmpassword"
               placeholder="Confirm Password"
               required/>

        <button type="submit">

            Register

        </button>

    </form>

    <div class="login-link">

        <a href="${pageContext.request.contextPath}/login">

            Already have an account? Login here

        </a>

    </div>

</div>

</body>

</html>