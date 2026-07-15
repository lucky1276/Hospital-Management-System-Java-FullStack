<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Appointment</title>

<style>

body{
    font-family:Arial,sans-serif;
    background:#f4f6f9;
}

.container{
    width:420px;
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

input,select{
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

<h2>Book Appointment</h2>

<form action="AddAppointmentServlet" method="post">

<input type="number"
name="patientId"
placeholder="Enter Patient ID"
required>

<input type="number"
name="doctorId"
placeholder="Enter Doctor ID"
required>

<input type="date"
name="appointmentDate"
required>

<input type="time"
name="appointmentTime"
required>

<select name="status">

<option value="Booked">Booked</option>

<option value="Completed">Completed</option>

<option value="Cancelled">Cancelled</option>

</select>

<button type="submit">
Book Appointment
</button>

</form>

</div>

</body>
</html>