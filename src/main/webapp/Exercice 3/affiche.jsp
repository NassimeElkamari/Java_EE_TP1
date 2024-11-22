<%@ page import="com.example.tp1.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Affiche User</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">

<div class="w-full max-w-md bg-white rounded-lg shadow-lg p-6">
  <h1 class="text-2xl font-bold text-blue-500 text-center mb-6">User Information</h1>

  <%
    User user = (User) session.getAttribute("user");

    if (user != null) {
  %>
  <div class="text-gray-700 space-y-4">
    <p class="text-lg font-medium">Login: <span class="text-gray-900 font-semibold"><%= user.getLogin() %></span></p>
    <p class="text-lg font-medium">Password: <span class="text-gray-900 font-semibold"><%= user.getPassword() %></span></p>
  </div>
  <%
  } else {
  %>
  <p class="text-center text-red-500 font-medium">No user found in session.</p>
  <%
    }
  %>

  <div class="mt-6 text-center">
    <a href="../index.jsp" class="bg-blue-500 text-white font-bold py-2 px-4 rounded-lg hover:bg-blue-600">
      Return to Menu
    </a>
  </div>
</div>

</body>
</html>
