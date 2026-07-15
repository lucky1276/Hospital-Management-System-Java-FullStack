<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires",0);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hospital Dashboard</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:#eef3f8;
}

header{
    background:linear-gradient(90deg,#1565c0,#42a5f5);
    color:white;
    padding:20px 50px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    box-shadow:0 3px 10px rgba(0,0,0,.2);
}

header h1{
    font-size:40px;
}

.logout-btn{
    background:#e53935;
    color:white;
    padding:12px 25px;
    border-radius:30px;
    text-decoration:none;
    font-weight:bold;
}

.logout-btn:hover{
    background:#b71c1c;
}

.container{
    width:90%;
    margin:35px auto;
}

.welcome{
    text-align:center;
    margin-bottom:35px;
}

.welcome h2{
    font-size:42px;
    color:#333;
}

/* Statistics */

.stats{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
    gap:25px;
    margin-bottom:40px;
}

.stat-card{
    background:white;
    border-radius:15px;
    padding:30px;
    text-align:center;
    box-shadow:0 5px 15px rgba(0,0,0,.15);
    transition:.3s;
}

.stat-card:hover{
    transform:translateY(-8px) scale(1.03);
}

.stat-card h3{
    color:#1976d2;
    margin-bottom:15px;
    font-size:24px;
}

.stat-card h1{
    font-size:55px;
    color:#1565c0;
}

/* Menu */

.menu{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:25px;
}

.card{
    background:white;
    border-radius:15px;
    padding:35px;
    text-align:center;
    box-shadow:0 5px 15px rgba(0,0,0,.15);
    transition:.3s;
}

.card:hover{
    transform:translateY(-8px) scale(1.03);
}

.card h3{
    color:#1976d2;
    margin-bottom:20px;
    font-size:26px;
}

.card a{
    display:inline-block;
    padding:12px 30px;
    background:#1976d2;
    color:white;
    text-decoration:none;
    border-radius:30px;
    font-size:18px;
}

.card a:hover{
    background:#0d47a1;
}

footer{
    margin-top:50px;
    background:#1565c0;
    color:white;
    text-align:center;
    padding:18px;
    font-size:18px;
}

@media(max-width:900px){

.stats,
.menu{
grid-template-columns:1fr;
}

header{
flex-direction:column;
gap:20px;
}

}

</style>

</head>

<body>

<header>

<h1>🏥 Hospital Management System</h1>

<a href="LogoutServlet" class="logout-btn">Logout</a>

</header>

<div class="container">

<div class="welcome">

<h2>👋 Welcome, Administrator</h2>
<p style="font-size:18px;color:#666;margin-top:10px;">
Manage your hospital efficiently from one dashboard.
</p>

</div>

<div class="stats">

<div class="stat-card">
<h3>👥 Total Patients</h3>
<h1><%=request.getAttribute("totalPatients")%></h1>
</div>

<div class="stat-card">
<h3>👨‍⚕️ Total Doctors</h3>
<h1><%=request.getAttribute("totalDoctors")%></h1>
</div>

<div class="stat-card">
<h3>📅 Total Appointments</h3>
<h1><%=request.getAttribute("totalAppointments")%></h1>
</div>

<div class="stat-card">
<h3>💰 Total Bills</h3>
<h1><%=request.getAttribute("totalBills")%></h1>
</div>
<div class="stat-card">
<h3>💵 Total Revenue</h3>
<h1>₹ <%=request.getAttribute("totalRevenue")%></h1>
</div>

<div class="stat-card">
<h3>✅ Paid Bills</h3>
<h1><%=request.getAttribute("paidBills")%></h1>
</div>

<div class="stat-card">
<h3>⏳ Pending Bills</h3>
<h1><%=request.getAttribute("pendingBills")%></h1>
</div>

</div>

<div class="menu">

<div class="card">
<h3>👤 Add Patient</h3>
<a href="addPatient.jsp">Open</a>
</div>

<div class="card">
<h3>📋 View Patients</h3>
<a href="ViewPatientsServlet">Open</a>
</div>

<div class="card">
<h3>👨‍⚕️ Add Doctor</h3>
<a href="addDoctor.jsp">Open</a>
</div>

<div class="card">
<h3>🩺 View Doctors</h3>
<a href="ViewDoctorsServlet">Open</a>
</div>

<div class="card">
<h3>📅 Book Appointment</h3>
<a href="addAppointment.jsp">Open</a>
</div>

<div class="card">
<h3>📖 View Appointments</h3>
<a href="ViewAppointmentsServlet">Open</a>
</div>

<div class="card">
<h3>💰 Add Bill</h3>
<a href="addBill.jsp">Open</a>
</div>

<div class="card">
<h3>🧾 View Bills</h3>
<a href="ViewBillsServlet">Open</a>
</div>

</div>

</div>

<footer>

© 2026 Hospital Management System | Developed by <b>Lakshman</b>

</footer>

</body>
</html>