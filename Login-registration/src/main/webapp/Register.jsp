<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RegisterPage</title>
<link rel="stylesheet" href="LoginStyle.css">
</head>
<body>
<div class="box">

<form action="RegisterServlet">
<h1>Register</h1>

<label>Username</label>
<input name="Username" placeholder="Enter your Username"></input>


<label>Password</label>
<input name="pswd" placeholder="Enter your password"></input>



<label>Email</label>
<input name="email" placeholder="Enter your email id"></input>


<button type="submit" class="bt1">Register</button>

</form>

<% String error = request.getParameter("error");
           if (error != null && error.equals("1")) { %>
            <p style="color: red;">Registration failed. Please try again.</p>
        <% } %>
</div>
</body>
</html>