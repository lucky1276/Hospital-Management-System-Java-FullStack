<%@page import="java.util.ArrayList"%>
<%@page import="com.hospital.model.Doctor"%>

<%
ArrayList<Doctor> doctorList =
(ArrayList<Doctor>)request.getAttribute("doctorList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Doctors</title>

<style>

body{
    font-family:Arial,sans-serif;
    background:#f4f6f9;
}

.container{
    width:90%;
    margin:30px auto;
}

h2{
    text-align:center;
    color:#1976d2;
    margin-bottom:20px;
}

/* Search Box */

.search-box{
    text-align:center;
    margin-bottom:20px;
}

.search-box input{
    width:300px;
    padding:10px;
    border:1px solid #ccc;
    border-radius:5px;
}

.search-box button{
    padding:10px 18px;
    background:#1976d2;
    color:white;
    border:none;
    border-radius:5px;
    cursor:pointer;
}

.search-box button:hover{
    background:#0d47a1;
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
    padding:12px;
    text-align:center;
    border:1px solid #ddd;
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

<h2>Doctor Details</h2>

<!-- Search Doctor -->

<div class="search-box">

<form action="SearchDoctorServlet" method="get">

<input
type="text"
name="name"
placeholder="Enter Doctor Name">

<button type="submit">
Search
</button>

<a href="ViewDoctorsServlet" class="btn">
Show All
</a>

</form>

</div>

<table>

<tr>
<th>ID</th>
<th>Name</th>
<th>Specialization</th>
<th>Phone</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<%
if(doctorList != null){

    for(Doctor d : doctorList){
%>

<tr>

<td><%=d.getDoctorId()%></td>
<td><%=d.getName()%></td>
<td><%=d.getSpecialization()%></td>
<td><%=d.getPhone()%></td>

<td>
<a href="EditDoctorServlet?id=<%=d.getDoctorId()%>" class="edit">
Edit
</a>
</td>

<td>
<a href="DeleteDoctorServlet?id=<%=d.getDoctorId()%>"
class="delete"
onclick="return confirm('Are you sure you want to delete this doctor?');">
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

<a href="DashboardServlet" class="btn">
Back to Dashboard
</a>

</div>

</body>
</html>