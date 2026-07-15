<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<link rel="stylesheet" href="css/style.css">

</head>

<body>

<div class="login-container">

    <h2>Patient Registration</h2>

    <form action="RegisterServlet" method="post">

    <input type="text" name="fullname" placeholder="Full Name" required>

    <input type="email" name="email" placeholder="Email" required>

    <input type="text" name="mobile" placeholder="Mobile Number" required>

    <input type="text" name="username" placeholder="Username" required>

    <input type="password" name="password" placeholder="Password" required>

    <button type="submit">Register</button>

</form>

    <p>
        Already have an account?
        <a href="login.jsp">Login</a>
    </p>

</div>

</body>
</html>