<%@ page import = "java.time.LocalDateTime, java.time.LocalDate" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>JSP Element</title>
</head>
<body>
    <%--
     JSP - Element
     --%>

    <!-- index.jsp ---translation-> index_jsp.java (Servlet) ----compile-> index_jsp.class -->

    <h1>Welcome to the Externship Session!!!</h1>
    <h2>JSP Element</h2>

   <%--
        JSP Declarations - used to insert instance variables and methods into generated servlet class
   --%>

   <%!
    int count = 0;

    public int getCount(){
        return count;
    }
   %>

   <%--
        * Scriptlet - all statements will be inserted into _jspService()
        - count is going to be local variable
        - you cannot have a method defined inside a scriptlet cause we cannot define method inside a method in java
   --%>

   <%
        int count = 0;
        count ++;
        System.out.println("count : " + count);
        System.out.println("getCount() : " + getCount());
   %>

   <%--
        * JSP Expression - all the statements are wrapped in out.print() under _jspService()
   --%>

   <%= count%>
   <%= getCount()%>

   <%--
        * JSP Directives - Page Directive, Include Directive and Taglib (JSTL)
   --%>

    <%--
    --%>
   <%
    LocalDate currentDate = LocalDate.now();
    LocalDateTime currentDateTime = LocalDateTime.now();
   %>
    <p> Today is :
        <%= currentDate%>
    </p>

    <p> Timestamp :
        <%= currentDateTime%>
    </p>

    <%--
        * Include Directive - it is used to include other jsp file into the current jsp file
    --%>

    <%@ include file="header.jsp" %>

    <%@ include file="footer.jsp" %>

    <%--
        * JSP Comment - In source code one can see the HTML comment in out.println(),
                        but JSP comment is ignored during the translation.
    --%>

    <!-- HTML Comment -->
    <%-- JSP Comment --%>

    <%--
        Implicit object : pageContext
    --%>

    <%
        String name = (String) pageContext.getAttribute("user", PageContext.SESSION_SCOPE);
        out.print("User : ");
        out.print(name);
    %>

</body>
</html>
