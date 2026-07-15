<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Bill</title>

<link rel="stylesheet" href="css/style.css">

</head>

<body>

<header>
    <h1>Hospital Management System</h1>
</header>

<div class="form-container">

<h2>Add Billing Details</h2>

<form action="AddBillServlet" method="post">

<input
type="number"
name="patientId"
placeholder="Enter Patient ID"
required>

<input
type="number"
step="0.01"
name="doctorFee"
placeholder="Doctor Fee"
required>

<input
type="number"
step="0.01"
name="medicineCharge"
placeholder="Medicine Charge"
required>

<input
type="number"
step="0.01"
name="roomCharge"
placeholder="Room Charge"
required>

<input
type="number"
step="0.01"
name="testCharge"
placeholder="Test Charge"
required>

<select name="paymentStatus" required>
    <option value="">Select Payment Status</option>
    <option value="Paid">Paid</option>
    <option value="Pending">Pending</option>
</select>

<input
type="date"
name="billingDate"
required>

<button type="submit">
Generate Bill
</button>

</form>

<br>

<a href="DashboardServlet" class="btn">
Back to Dashboard
</a>

</div>

</body>
</html>