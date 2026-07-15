<%@page import="com.hospital.model.Billing"%>

<%
Billing bill = (Billing)request.getAttribute("bill");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Bill</title>

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
    box-shadow:0 5px 15px rgba(0,0,0,.2);
}

h2{
    text-align:center;
    color:#1976d2;
    margin-bottom:20px;
}

input,select{
    width:100%;
    padding:12px;
    margin:10px 0;
    border:1px solid #ccc;
    border-radius:6px;
}

button{
    width:100%;
    padding:12px;
    background:#1976d2;
    color:white;
    border:none;
    border-radius:6px;
    font-size:16px;
    cursor:pointer;
}

button:hover{
    background:#0d47a1;
}

</style>

</head>

<body>

<div class="container">

<h2>Update Bill</h2>

<form action="UpdateBillServlet" method="post">

<input
type="hidden"
name="billId"
value="<%=bill.getBillId()%>">

<label>Patient ID</label>

<input
type="number"
name="patientId"
value="<%=bill.getPatientId()%>"
required>

<label>Doctor Fee</label>

<input
type="number"
step="0.01"
name="doctorFee"
value="<%=bill.getDoctorFee()%>"
required>

<label>Medicine Charge</label>

<input
type="number"
step="0.01"
name="medicineCharge"
value="<%=bill.getMedicineCharge()%>"
required>

<label>Room Charge</label>

<input
type="number"
step="0.01"
name="roomCharge"
value="<%=bill.getRoomCharge()%>"
required>

<label>Test Charge</label>

<input
type="number"
step="0.01"
name="testCharge"
value="<%=bill.getTestCharge()%>"
required>

<label>Payment Status</label>

<select name="paymentStatus">

<option value="Paid"
<%= bill.getPaymentStatus().equals("Paid") ? "selected" : "" %>>
Paid
</option>

<option value="Pending"
<%= bill.getPaymentStatus().equals("Pending") ? "selected" : "" %>>
Pending
</option>

</select>

<label>Billing Date</label>

<input
type="date"
name="billingDate"
value="<%=bill.getBillingDate()%>"
required>

<button type="submit">
Update Bill
</button>

</form>

</div>

</body>
</html>