<html>

<head>

    <title>Login</title>

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

        .login-box{

            width:380px;

            background:white;

            padding:40px;

            border-radius:18px;

            box-shadow:0 8px 25px rgba(0,0,0,0.3);
        }

        h2{

            text-align:center;

            margin-bottom:30px;

            color:#2563eb;
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

            border-color:#2563eb;
        }

        input[type="submit"]{

            background:#2563eb;

            color:white;

            border:none;

            cursor:pointer;

            font-size:16px;

            transition:0.3s;
        }

        input[type="submit"]:hover{

            background:#1d4ed8;
        }

        .register-link{

            text-align:center;

            margin-top:20px;
        }

        .register-link a{

            text-decoration:none;

            color:#2563eb;

            font-weight:bold;
        }

        .register-link a:hover{

            text-decoration:underline;
        }

        .error{

            color:red;

            text-align:center;

            margin-bottom:15px;
        }

    </style>

</head>

<body>

<div class="login-box">

    <h2>Login</h2>

    <p class="error">${error}</p>

    <form action="login"
          method="post">

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

        <input type="submit"
               value="Login"/>

    </form>

    <div class="register-link">

        <a href="${pageContext.request.contextPath}/register">

            Don't have an account? Register here

        </a>

    </div>

</div>

</body>

</html>