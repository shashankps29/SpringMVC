<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Student Dashboard</title>

    <!-- Bootstrap -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Bootstrap Icons -->

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<style>

.body{
background-color : green;
}


 </style>

</head>

<body>

<div class="container">


   <div class = "card mx-auto mt-5 bg-primary" style="width:50%">
        <div class="card-body">

        <h1 class="text-center text-white"> My Search </h1>

        <form class="mt-5" action="search">

        <div class = "form-group">
         <input type="text" name = "query" placeholder="Enter The PNR" class="form-control">

         </div>

         <div class="container text-center mt-5">
         <button class="btn btn-outline-light"> Search </button>
         </div>


         </form>

    </div>
     </div>

</body>

</html>