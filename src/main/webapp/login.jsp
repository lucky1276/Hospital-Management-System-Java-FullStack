<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hospital Login</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
  background-image: url("images/hospital-bg.png");
background-size: cover;
background-position: center;
background-repeat: no-repeat;
}

.login-container{
    width:420px;
    padding:40px;
    background:rgba(255,255,255,0.95);
    border-radius:20px;
    box-shadow:0 10px 35px rgba(0,0,0,.35);
    text-align:center;
}

.logo{
    font-size:60px;
    margin-bottom:10px;
}

h2{
    color:#1565c0;
    margin-bottom:10px;
    font-size:30px;
}

.subtitle{
    color:#555;
    margin-bottom:25px;
}

input{
    width:100%;
    padding:14px;
    margin:12px 0;
    border:1px solid #ccc;
    border-radius:8px;
    font-size:16px;
}

input:focus{
    outline:none;
    border-color:#1976d2;
}

button{
    width:100%;
    padding:14px;
    background:#1976d2;
    color:white;
    border:none;
    border-radius:8px;
    font-size:18px;
    cursor:pointer;
}

button:hover{
    background:#0d47a1;
}

.register{
    margin-top:20px;
}

.register a{
    color:#1976d2;
    text-decoration:none;
    font-weight:bold;
}

.footer{
    margin-top:20px;
    color:#666;
    font-size:13px;
}

</style>

</head>

<body>

<div class="login-container">

<div class="logo">🏥</div>

<h2>Hospital Management System</h2>

<p class="subtitle">Welcome Back! Please Login</p>

<form action="LoginServlet" method="post">

<input
type="text"
name="username"
placeholder="👤 Enter Username"
required>

<input
type="password"
name="password"
placeholder="🔒 Enter Password"
required>

<button type="submit">
Login
</button>

</form>

<div class="register">
Don't have an account?
<a href="register.jsp">Register</a>
</div>

<div class="footer">
© 2026 Hospital Management System
</div>

</div>

</body>
</html>