<%@page import="java.util.ArrayList"%>
<%@page import="com.hospital.model.Billing"%>

<%
ArrayList<Billing> billList =
(ArrayList<Billing>)request.getAttribute("billList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Bills</title>

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
    margin-bottom:20px;
}

/* Search */

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
    box-shadow:0 5px 15px rgba(0,0,0,.1);
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

tr:hover{
    background:#e3f2fd;
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

<h2>Billing Details</h2>

<div class="search-box">

<form action="SearchBillServlet" method="get">

<input
type="text"
name="keyword"
placeholder="Search by Patient ID or Paid/Pending">

<button type="submit">
Search
</button>

<a href="ViewBillsServlet" class="btn">
Show All
</a>

</form>

</div>

<table>

<tr>
<th>Bill ID</th>
<th>Patient ID</th>
<th>Doctor Fee</th>
<th>Medicine</th>
<th>Room</th>
<th>Test</th>
<th>Total</th>
<th>Status</th>
<th>Date</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<%
if(billList != null){

for(Billing b : billList){
%>

<tr>

<td><%=b.getBillId()%></td>
<td><%=b.getPatientId()%></td>
<td>Rs. <%=b.getDoctorFee()%></td>
<td>Rs. <%=b.getMedicineCharge()%></td>
<td>Rs. <%=b.getRoomCharge()%></td>
<td>Rs. <%=b.getTestCharge()%></td>
<td><b>Rs. <%=b.getTotalAmount()%></b></td>
<td><%=b.getPaymentStatus()%></td>
<td><%=b.getBillingDate()%></td>

<td>
<a href="EditBillServlet?id=<%=b.getBillId()%>" class="edit">
Edit
</a>
</td>

<td>
<a href="DeleteBillServlet?id=<%=b.getBillId()%>"
class="delete"
onclick="return confirm('Are you sure you want to delete this bill?');">
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