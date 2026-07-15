<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Patient</title>

<link rel="stylesheet" href="css/style.css">

<style>
body{
    background:#f4f6f9;
    font-family:Arial,sans-serif;
}

.container{
    width:450px;
    margin:60px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 10px rgba(0,0,0,0.2);
}

h2{
    text-align:center;
    color:#1976d2;
    margin-bottom:20px;
}

input{
    width:100%;
    padding:12px;
    margin:10px 0;
    border:1px solid #ccc;
    border-radius:5px;
    font-size:16px;
}

button{
    width:100%;
    padding:12px;
    background:#1976d2;
    color:white;
    border:none;
    border-radius:5px;
    font-size:18px;
    cursor:pointer;
}

button:hover{
    background:#0d47a1;
}

a{
    text-decoration:none;
    color:#1976d2;
    font-weight:bold;
}
</style>

</head>

<body>

<div class="container">

<h2>Add Patient</h2>

<form action="AddPatientServlet" method="post">

    <input type="text"
           name="name"
           placeholder="Enter Patient Name"
           required>

    <input type="number"
           name="age"
           placeholder="Enter Age"
           required>

    <input type="text"
           name="gender"
           placeholder="Enter Gender"
           required>

    <input type="text"
           name="phone"
           placeholder="Enter Phone Number"
           required>

    <input type="text"
           name="disease"
           placeholder="Enter Disease"
           required>

    <button type="submit">Add Patient</button>

</form>

<br>

<center>
<a href="dashboard.jsp">⬅ Back to Dashboard</a>
</center>

</div>

</body>
</html>