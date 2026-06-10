<html>

<head>

    <title>Search Student</title>

    <style>

        body{

            font-family:Arial,sans-serif;

            background:#f4f6f9;

            padding:40px;
        }

        .box{

            width:500px;

            background:white;

            padding:30px;

            border-radius:12px;

            box-shadow:0 4px 10px rgba(0,0,0,0.1);
        }

        input{

            width:100%;

            padding:12px;

            margin-top:10px;

            border:1px solid #ccc;

            border-radius:8px;
        }

        button{

            margin-top:20px;

            background:#2563eb;

            color:white;

            border:none;

            padding:12px 20px;

            border-radius:8px;

            cursor:pointer;
        }
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
    String error =
            (String) request.getAttribute("error");
%>

<div class="box">

<h2>Search Student</h2>

<form action="searchStudent"
      method="get">

    Enter ID, Name or Email:

    <input type="text"
           name="keyword"
           required/  >

    <button type="submit">

        Search

    </button>

</form>

</div>
<%
    if(error != null){
%>

<div id="errorPopup"
     class="error-popup">

     <%= error %>

</div>
</body>

</html>