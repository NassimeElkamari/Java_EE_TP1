<%--
  Created by IntelliJ IDEA.
  User: nassi
  Date: 11/21/2024
  Time: 3:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Authentification</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">

<div class="bg-white p-6 rounded-lg shadow-lg max-w-md w-full text-center">
    <h1 class="text-2xl font-bold text-blue-500 mb-4">Authentification Menu</h1>

    <ul class="space-y-4 mb-6">
        <li>
            <a href="login.jsp" class="block bg-blue-500 text-white font-semibold py-2 px-4 rounded-lg hover:bg-blue-600">
                Authentify New User
            </a>
        </li>
        <li>
            <a href="affiche.jsp" class="block bg-green-500 text-white font-semibold py-2 px-4 rounded-lg hover:bg-green-600">
                View User Information
            </a>
        </li>
    </ul>

    <a href="../index.jsp" class="bg-gray-500 text-white font-semibold py-2 px-4 rounded-lg hover:bg-gray-600">
        Return to Menu
    </a>
</div>

</body>
</html>
