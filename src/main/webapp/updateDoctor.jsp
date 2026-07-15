<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Doctor</title>

<style>

body{
    font-family:Arial,sans-serif;
    background:#f4f6f9;
}

.container{
    width:400px;
    margin:40px auto;
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
    cursor:pointer;
    font-size:16px;
}

button:hover{
    background:#0d47a1;
}

</style>

</head>

<body>

<div class="container">

<h2>Update Doctor</h2>

<form action="UpdateDoctorServlet" method="post">

<input type="hidden" name="doctorId"
value="<%=request.getAttribute("doctorId")%>">

<input type="text" name="name"
value="<%=request.getAttribute("name")%>">

<input type="text" name="specialization"
value="<%=request.getAttribute("specialization")%>">

<input type="text" name="phone"
value="<%=request.getAttribute("phone")%>">

<button type="submit">
Update Doctor
</button>

</form>

</div>

</body>
</html>