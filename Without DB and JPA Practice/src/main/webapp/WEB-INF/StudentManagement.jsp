    <%@ page contentType="text/html;charset=UTF-8" %>
    <%@ page import="java.util.List" %>
    <%@ page import="model.Student" %>

    <html>

    <head>
        <title>Student Management</title>
    </head>

    <body>

    <h2>Add Student</h2>

  <form action="detailposted"
        method="post">

      ID:
      <input type="number" name="id">

      <br><br>

      Name:
      <input type="text" name="name">

      <br><br>

      Class:
      <input type="number" name="cla">

      <br><br>

      Phone:
      <input type="number" name="phoneno">

      <br><br>

      Parent Name:
      <input type="text" name="parentName">

      <br><br>

      Marks:
      <input type="number" name="marks">

      <br><br>

      <button type="submit">
          Add Student
      </button>

  </form>




    </body>
    </html>