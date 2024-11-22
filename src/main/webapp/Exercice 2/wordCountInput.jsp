<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Counting Words</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">

<div class="w-full max-w-md bg-white rounded-lg shadow-lg p-6">
    <h1 class="text-2xl font-bold text-blue-500 text-center mb-6">Word Counter</h1>

    <form method="post" class="space-y-4">
        <input
                type="text"
                name="text_entered"
                placeholder="Enter your sentence..."
                class="w-full p-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-400"
                required
        >
        <button
                type="submit"
                class="w-full bg-blue-500 text-white font-bold py-2 rounded-lg hover:bg-blue-600">
            Count Words
        </button>
    </form>

    <%
        String text_entered = request.getParameter("text_entered");
        if (text_entered != null && !text_entered.isEmpty()) {
            String[] words = text_entered.trim().split("\\s+");
            int wordCount = words.length;
    %>
    <h3 class="text-center text-green-500 font-medium mt-6">Word Count: <%= wordCount %></h3>
    <%
        }
    %>

    <div class="mt-6 text-center">
        <a href="../index.jsp" class="text-blue-500 font-bold hover:underline">Return to Menu</a>
    </div>
</div>

</body>
</html>
