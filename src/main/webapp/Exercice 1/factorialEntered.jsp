<%--
  Created by IntelliJ IDEA.
  User: nassi
  Date: 11/21/2024
  Time: 2:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Factorial entered</title>
    <link rel="stylesheet" type="text/css" href="../css/fe.css">

</head>
<body>

   <form method="post">
       <input type="number" name="number">
       <input type="submit" name="Calculer factorielle">
   </form>

    <%
        String number_entered = request.getParameter("number");
        if(number_entered!= null){
            int number = Integer.parseInt(number_entered);
            if(number > 0){
                int resultat = 1 ;
                for (int i = 1 ; i<= number ; i++) {
                    resultat *= i;
                }
%>
   <h3> La factorielle de <%= number %> est : <%=resultat%></h3>

<% }}%>


   <button><a href="../index.jsp">Return to menu</a></button>

</body>
</html>
