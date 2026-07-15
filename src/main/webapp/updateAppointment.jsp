<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Appointment</title>

<style>

body{
    font-family:Arial,sans-serif;
    background:#f4f6f9;
}

.container{
    width:450px;
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

<h2>Update Appointment</h2>

<form action="UpdateAppointmentServlet" method="post">

<input type="hidden" name="appointmentId"
value="<%=request.getAttribute("appointmentId")%>">

<input type="number" name="patientId"
value="<%=request.getAttribute("patientId")%>" required>

<input type="number" name="doctorId"
value="<%=request.getAttribute("doctorId")%>" required>

<input type="date" name="appointmentDate"
value="<%=request.getAttribute("appointmentDate")%>" required>

<input type="time" name="appointmentTime"
value="<%=request.getAttribute("appointmentTime")%>" required>

<select name="status">

<option value="Booked"
<%= "Booked".equals(request.getAttribute("status")) ? "selected" : "" %>>
Booked
</option>

<option value="Completed"
<%= "Completed".equals(request.getAttribute("status")) ? "selected" : "" %>>
Completed
</option>

<option value="Cancelled"
<%= "Cancelled".equals(request.getAttribute("status")) ? "selected" : "" %>>
Cancelled
</option>

</select>

<button type="submit">Update Appointment</button>

</form>

</div>

</body>
</html>