<%@ page import="java.util.Objects" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Authentication</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">

<div class="bg-white p-6 rounded-lg shadow-lg max-w-md w-full">
  <h1 class="text-2xl font-bold text-blue-500 mb-4 text-center">Authentication</h1>

  <form method="post" class="space-y-4">
    <div>
      <label for="name" class="block text-gray-700 font-semibold">Name:</label>
      <input type="text" name="name" id="name"
             class="w-full p-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500">
    </div>

    <div>
      <label for="password" class="block text-gray-700 font-semibold">Password:</label>
      <input type="password" name="password" id="password"
             class="w-full p-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500">
    </div>

    <div>
      <label for="studentsNumber" class="block text-gray-700 font-semibold">Number of Students:</label>
      <input type="number" name="studentsNumber" id="studentsNumber"
             class="w-full p-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500">
    </div>

    <div class="text-center">
      <input type="submit" value="Login"
             class="bg-blue-500 text-white font-semibold py-2 px-4 rounded-lg hover:bg-blue-600 cursor-pointer">
    </div>
  </form>

  <%
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String studentsNumber = request.getParameter("studentsNumber");
    String correctPassword = "Nassime123";

    if (name != null && password != null && studentsNumber != null) {
      if (!Objects.equals(password, correctPassword)) {
        response.sendRedirect("login.jsp");
      } else {
        session = request.getSession();
        session.setAttribute("studentsNumber", studentsNumber);
        response.sendRedirect("studentForm.jsp");
      }
    }
  %>
</div>

</body>
</html>
