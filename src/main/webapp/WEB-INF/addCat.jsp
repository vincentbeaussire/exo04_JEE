<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.example.ex04_jee.model.Cat" %>
<%@ page import="java.util.List" %>

<%
  List<Cat> cats = (List<Cat>) request.getAttribute("cats");
%>

<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
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
    <% if (cats != null) {
      for (Cat c : cats) { %>
    <tr>
      <td><%= c.getName() %></td>
      <td><%= c.getBreed() %></td>
      <td><%= c.getFavoriteMeal() %></td>
      <td><%= c.getBirthDate() %></td>
    </tr>
    <%   }
    } else { %>
    <tr><td colspan="4">No cats found.</td></tr>
    <% } %>
    </tbody>
  </table>

  <h2>Add a cat</h2>
  <form action="cats" method="post">
    <div>
      <label for="name">Name</label>
      <input type="text" name="name" id="name" required>
    </div>
    <div>
      <label for="breed">Breed</label>
      <input type="text" name="breed" id="breed" required>
    </div>
    <div>
      <label for="favoritemeal">Favorite Meal</label>
      <input type="text" name="favoritemeal" id="favoritemeal" required>
    </div>
    <div>
      <label for="birthdate">Birth Date</label>
      <input type="date" name="birthdate" id="birthdate" required>
    </div>
    <button type="submit">Ajouter</button>
  </form>
</main>
</body>
</html>
