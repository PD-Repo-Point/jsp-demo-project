<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Implicit Object Demo</title>
</head>
<body>
    <%--
        * request - implicit objects
    --%>
    <%
    String weather = (String) request.getAttribute("weather");
    String fav_color = (String) session.getAttribute("favourite_color");
    String appName = (String) application.getAttribute("appName");

    System.out.println("---------PageContext DEMO START-----------");
    pageContext.setAttribute("weather", "Rainy");
    System.out.println(pageContext.getAttribute("weather")); //Page Scope
    System.out.println(pageContext.getAttribute("weather", PageContext.REQUEST_SCOPE));
    System.out.println(pageContext.getAttribute("favourite_color", PageContext.SESSION_SCOPE));
    System.out.println(pageContext.getAttribute("appName", PageContext.APPLICATION_SCOPE));
    System.out.println("---------PageContext DEMO END-----------");


    %>

    <%--
        CASE - I : Setting up the attribute i.e. user in SESSION_SCOPE and accessing it in index.jsp
    --%>

    <% pageContext.setAttribute("user", "Alex", PageContext.SESSION_SCOPE); %>
    <%-- Go to index.jsp --%>
    <p>
        Weather : <%= weather%>
    </p>

    <p>
        Fav Color : <%= fav_color%>
    </p>

    <p>
        App Name : <%= appName%>
    </p>
</body>
</html>