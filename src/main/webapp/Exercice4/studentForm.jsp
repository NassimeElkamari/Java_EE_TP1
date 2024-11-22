<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Student Form</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 min-h-screen flex items-center justify-center">

<div class="bg-white p-6 rounded-lg shadow-lg max-w-3xl w-full">
    <h1 class="text-2xl font-bold text-blue-500 mb-4">Enter Details for Your Students:</h1>

    <%
        // Retrieve the student number from the session
        session = request.getSession();
        String studentNumber = (String) session.getAttribute("studentsNumber");

        // If there is no student number, default to 0
        if (studentNumber == null || studentNumber.isEmpty()) {
            studentNumber = "0";
        }

        int numberOfStudents = Integer.parseInt(studentNumber);
    %>

    <form method="post" action="studentList.jsp" class="space-y-6">
        <%
            for (int i = 1; i <= numberOfStudents; i++) {
        %>
        <div class="border border-gray-200 p-4 rounded-lg">
            <h3 class="text-lg font-semibold text-gray-700 mb-4">Student <%= i %>:</h3>

            <div class="mb-4">
                <label for="firstName<%= i %>" class="block text-gray-700 font-medium">First Name:</label>
                <input type="text" name="firstName<%= i %>" id="firstName<%= i %>" required
                       class="w-full p-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500">
            </div>

            <div class="mb-4">
                <label for="lastName<%= i %>" class="block text-gray-700 font-medium">Last Name:</label>
                <input type="text" name="lastName<%= i %>" id="lastName<%= i %>" required
                       class="w-full p-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500">
            </div>

            <div>
                <label for="averageGrade<%= i %>" class="block text-gray-700 font-medium">Average Grade:</label>
                <input type="number" name="averageGrade<%= i %>" id="averageGrade<%= i %>" min="0" max="20" step="0.1" required
                       class="w-full p-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500">
            </div>
        </div>
        <%
            }
        %>

        <div class="text-center">
            <input type="submit" value="Submit"
                   class="bg-blue-500 text-white font-semibold py-2 px-4 rounded-lg hover:bg-blue-600 cursor-pointer">
        </div>
    </form>
</div>

</body>
</html>
