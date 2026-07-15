<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Doctor</title>

<style>

body{
    font-family:Arial,sans-serif;
    background:#f4f6f9;
}

.container{
    width:450px;
    margin:50px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 10px gray;
}

h2{
    text-align:center;
    color:#1976d2;
}

input{
    width:100%;
    padding:12px;
    margin:10px 0;
    border:1px solid #ccc;
    border-radius:5px;
}

button{
    width:100%;
    padding:12px;
    background:#1976d2;
    color:white;
    border:none;
    border-radius:5px;
    font-size:16px;
    cursor:pointer;
}

button:hover{
    background:#0d47a1;
}

a{
    text-decoration:none;
    color:white;
}

.back{
    display:inline-block;
    margin-top:15px;
    background:#555;
    padding:10px 20px;
    border-radius:5px;
}

</style>

</head>

<body>

<div class="container">

<h2>Add Doctor</h2>

<form action="AddDoctorServlet" method="post">

<input type="text"
name="name"
placeholder="Enter Doctor Name"
required>

<input type="text"
name="specialization"
placeholder="Enter Specialization"
required>

<input type="text"
name="phone"
placeholder="Enter Phone Number"
required>

<button type="submit">
Add Doctor
</button>

</form>

<br>

<a href="dashboard.jsp" class="back">
Back to Dashboard
</a>

</div>

</body>
</html>