<%@page import="java.util.ArrayList"%>
<%@page import="com.hospital.model.Appointment"%>

<%
ArrayList<Appointment> appointmentList =
(ArrayList<Appointment>)request.getAttribute("appointmentList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Appointments</title>

<style>

body{
    font-family:Arial,sans-serif;
    background:#f4f6f9;
}

.container{
    width:95%;
    margin:30px auto;
}

h2{
    text-align:center;
    color:#1976d2;
}

table{
    width:100%;
    border-collapse:collapse;
    background:white;
}

th{
    background:#1976d2;
    color:white;
    padding:12px;
}

td{
    border:1px solid #ddd;
    padding:10px;
    text-align:center;
}

tr:nth-child(even){
    background:#f2f2f2;
}

.btn{
    background:#1976d2;
    color:white;
    padding:10px 18px;
    text-decoration:none;
    border-radius:5px;
}

.edit{
    background:green;
    color:white;
    padding:6px 12px;
    text-decoration:none;
    border-radius:4px;
}

.delete{
    background:red;
    color:white;
    padding:6px 12px;
    text-decoration:none;
    border-radius:4px;
}

.btn:hover,
.edit:hover,
.delete:hover{
    opacity:0.9;
}

</style>

</head>

<body>

<div class="container">

<h2>Appointment Details</h2>

<table>

<tr>
<th>ID</th>
<th>Patient ID</th>
<th>Doctor ID</th>
<th>Date</th>
<th>Time</th>
<th>Status</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<%
if(appointmentList != null){

    for(Appointment a : appointmentList){
%>

<tr>

<td><%=a.getAppointmentId()%></td>
<td><%=a.getPatientId()%></td>
<td><%=a.getDoctorId()%></td>
<td><%=a.getAppointmentDate()%></td>
<td><%=a.getAppointmentTime()%></td>
<td><%=a.getStatus()%></td>

<td>
<a href="EditAppointmentServlet?id=<%=a.getAppointmentId()%>" class="edit">
    Edit
</a>
</td>

<td>
<a href="DeleteAppointmentServlet?id=<%=a.getAppointmentId()%>"
   class="delete"
   onclick="return confirm('Are you sure you want to delete this appointment?');">
    Delete
</a>
</td>

</tr>

<%
    }
}
%>

</table>

<br><br>

<!-- Fixed Back Button -->
<a href="DashboardServlet" class="btn">
    Back to Dashboard
</a>

</div>

</body>
</html>