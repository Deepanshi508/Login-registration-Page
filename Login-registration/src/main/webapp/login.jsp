<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginPage</title>
<link rel="stylesheet" href="LoginStyle.css">
</head>
<body>
<div class="box">

<form action="LoginServlet">

<h1>Login</h1>


<label for="username">Username</label>
<input type="text" id="username" name="Username" placeholder="Enter your Username" required></input>


<label for="password">Password</label>
<input type="password" id="password" name="pswd" placeholder="Enter your password" required ></input>


<button type="submit" class="bt1">Login</button>

<% String error=request.getParameter("error");
		if(error!=null && error.equals("1")){%>
		<p style="color: red;">Invalid username or password. Please try again.</p>
		<%} %>

<% String rs=request.getParameter("registration");
		if(rs!=null && rs.equals("success")){%>
		<p style="color: green;">Registration Successful. Please login to continue</p>
		<%} %>
</form>

		
</div>

</body>
</html>