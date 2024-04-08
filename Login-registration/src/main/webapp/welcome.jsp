<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);
        // Check if the session is not null and the username attribute is set
        if (session1 != null && session1.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session.getAttribute("username");
    %>

<div class="box">
<h1>Welcome, <%= username %>!</h1>
<h3>Congratulations! you are registered</h3>
<p>We are delighted to have you registered<p>
<a href=logout.jsp>Logout</a>
</div>

<%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>

</body>
</html>