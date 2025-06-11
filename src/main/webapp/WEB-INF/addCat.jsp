<%@ page import="org.example.ex04_jee.model.Cat" %><%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 11/06/2025
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="cat" type="java.util.ArrayList" scope="request"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <title>Liste des chats</title>
</head>
<body>
<main class="container">
  <h1>Cat's List</h1>
  <table class="table table-dark text-center align-middle">
    <thead>
    <tr>
      <th>Name</th>
      <th>Breed</th>
      <th>Favorite Meal</th>
      <th>Birth Date</th>
    </tr>
    </thead>
    <tbody>
    <% for (Cat c : cats) {%>
    <tr>
      <td> <%= c.getName()%> </td>
      <td> <%= c.getBreed()%> </td>
      <td> <%= c.getFavoriteMeal()%> </td>
      <td> <%= c.getBirthDate()%> </td>
    </tr>
    <% } %>
    <title>Form</title>
    <form action="form" method="post">
      <div>
        <label for="name"> Name</label>
        <input type="text" name="name" id="name">
      </div>
      <div>
        <label for="breed"> Breed</label>
        <input type="text" name="breed" id="breed">
      </div>
      <div>
        <label for="favoritemeal"> Favorite Meal</label>
        <input type="text" name="favoritemeal" id="favoritemeal">
      </div>
      <div>
        <label for="birthdate"> Birth Date</label>
        <input type="text" name="birthdate" id="birthdate">
      </div>
      <button>Ajouter</button>
    </form>
    </tbody>
  </table>
</main>
</body>
</html>
