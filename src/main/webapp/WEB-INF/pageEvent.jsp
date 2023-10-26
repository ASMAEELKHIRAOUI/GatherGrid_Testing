<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page Event</title>
</head>
<body>
    <div>
        <%@page import="java.util.Date" %>
        <%
            var now = new Date();
            out.println("Date et heure actuelles : " + now);
        %>
    </div>
    <h1>Exemple de servlet avec init() et destroy()</h1>
    <p>
        <%
            String variable = (String) request.getAttribute("msg");
        %>
        var = <%= variable %>
    </p>
</body>
</html>
