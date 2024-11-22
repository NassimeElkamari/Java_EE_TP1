<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Factorial</title>
    <link rel="stylesheet" type="text/css" href="../css/fl.css">

</head>
<body>

<h1>This is a list of factorial from 0 to 9 : </h1>

<%
    int resultat;

    for (int i = 0; i < 10; i++) {
        resultat = 1;
        for (int j = 1; j <= i; j++) {
            resultat *= j;
        }
%>
<p><%= i %>! = <%= resultat %></p>
<%
    }
%>


<button><a href="../index.jsp">Return to menu</a></button>

</body>
</html>
