<html>

<head>

    <title>Find Student</title>


     <style>

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
<h2>Update Student</h2>

<form action="findStudent"
      method="get">

    Enter Student ID:

    <input type="number"
           name="id"/>

    <br><br>

    <input type="submit"
           value="Find Student"/>

</form>



</body>

</html>