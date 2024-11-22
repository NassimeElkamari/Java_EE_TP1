<%--
  Created by IntelliJ IDEA.
  User: nassi
  Date: 11/21/2024
  Time: 2:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Login</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">

<div class="bg-white p-6 rounded-lg shadow-lg max-w-md w-full">
  <h1 class="text-2xl font-bold text-blue-500 mb-4 text-center">Login</h1>

  <form method="post" action="load.jsp" class="space-y-4">
    <div>
      <label for="login" class="block text-gray-700 font-semibold">Enter your login:</label>
      <input type="text" name="login" id="login"
             class="w-full p-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500">
    </div>

    <div>
      <label for="password" class="block text-gray-700 font-semibold">Enter your password:</label>
      <input type="text" name="password" id="password"
             class="w-full p-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500">
    </div>

    <div class="text-center">
      <input type="submit" value="Login"
             class="bg-blue-500 text-white font-semibold py-2 px-4 rounded-lg hover:bg-blue-600 cursor-pointer">
    </div>
  </form>

  <div class="text-center mt-6">
    <a href="../index.jsp" class="bg-gray-500 text-white font-semibold py-2 px-4 rounded-lg hover:bg-gray-600">
      Return to Menu
    </a>
  </div>
</div>

</body>
</html>
