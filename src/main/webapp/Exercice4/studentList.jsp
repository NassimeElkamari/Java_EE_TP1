<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collections" %>
<%@ page import="java.util.Comparator" %>
<%@ page import="com.example.tp1.Student" %>
<html>
<head>
    <title>Student List</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 min-h-screen flex items-center justify-center">

<div class="bg-white p-6 rounded-lg shadow-lg w-full max-w-5xl">
    <h1 class="text-3xl font-bold text-center text-blue-500 mb-6">List of Students</h1>

    <%
        List<Student> students = new ArrayList<>();

        session = request.getSession();
        String studentNumber = (String) session.getAttribute("studentsNumber");

        int numberOfStudents = Integer.parseInt(studentNumber);

        for (int i = 1; i <= numberOfStudents; i++) {
            String firstName = request.getParameter("firstName" + i);
            String lastName = request.getParameter("lastName" + i);
            double averageGrade = Double.parseDouble(request.getParameter("averageGrade" + i));

            Student student = new Student(firstName, lastName, averageGrade);
            students.add(student);
        }

        Collections.sort(students, new Comparator<Student>() {
            public int compare(Student s1, Student s2) {
                return Double.compare(s2.getAverageGrade(), s1.getAverageGrade());
            }
        });
    %>

    <table class="table-auto w-full border-collapse border border-gray-300">
        <thead class="bg-blue-500 text-white">
        <tr>
            <th class="border border-gray-300 px-4 py-2">First Name</th>
            <th class="border border-gray-300 px-4 py-2">Last Name</th>
            <th class="border border-gray-300 px-4 py-2">Average Grade</th>
            <th class="border border-gray-300 px-4 py-2">Mention</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (Student student : students) {
                String mention = "";
                String rowColor = "";

                if (student.getAverageGrade() >= 16) {
                    mention = "Très bien";
                    rowColor = "bg-green-100";
                } else if (student.getAverageGrade() >= 14) {
                    mention = "Bien";
                    rowColor = "bg-green-200";
                } else if (student.getAverageGrade() >= 12) {
                    mention = "A.Bien";
                    rowColor = "bg-orange-100";
                } else if (student.getAverageGrade() >= 10) {
                    mention = "Passable";
                    rowColor = "bg-yellow-100";
                } else {
                    mention = "Ajournée";
                    rowColor = "bg-red-100";
                }
        %>
        <tr class="<%= rowColor %>">
            <td class="border border-gray-300 px-4 py-2"><%= student.getFirstName() %></td>
            <td class="border border-gray-300 px-4 py-2"><%= student.getLastName() %></td>
            <td class="border border-gray-300 px-4 py-2"><%= student.getAverageGrade() %></td>
            <td class="border border-gray-300 px-4 py-2"><%= mention %></td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
    <div class="mt-6 text-center">
        <a href="../index.jsp" class="bg-blue-500 text-white font-bold py-2 px-4 rounded-lg hover:bg-blue-600">
            Return to Menu
        </a>
    </div>
</div>

</body>
</html>
