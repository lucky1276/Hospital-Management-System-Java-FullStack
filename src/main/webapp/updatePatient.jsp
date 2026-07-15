<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Patient</title>

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

<h2>Update Patient</h2>

<form action="UpdatePatientServlet" method="post">

<input type="hidden" name="patientId"
value="<%=request.getAttribute("patientId")%>">

<input type="text" name="name"
value="<%=request.getAttribute("name")%>">

<input type="number" name="age"
value="<%=request.getAttribute("age")%>">

<input type="text" name="gender"
value="<%=request.getAttribute("gender")%>">

<input type="text" name="phone"
value="<%=request.getAttribute("phone")%>">

<input type="text" name="disease"
value="<%=request.getAttribute("disease")%>">


<button type="submit">
Update Patient
</button>

</form>

</div>

</body>
</html>