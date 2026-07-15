package com.hospital.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.hospital.db.DBConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UpdateBillServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int billId = Integer.parseInt(request.getParameter("billId"));
        int patientId = Integer.parseInt(request.getParameter("patientId"));

        double doctorFee = Double.parseDouble(request.getParameter("doctorFee"));
        double medicineCharge = Double.parseDouble(request.getParameter("medicineCharge"));
        double roomCharge = Double.parseDouble(request.getParameter("roomCharge"));
        double testCharge = Double.parseDouble(request.getParameter("testCharge"));

        double totalAmount = doctorFee + medicineCharge + roomCharge + testCharge;

        String paymentStatus = request.getParameter("paymentStatus");
        String billingDate = request.getParameter("billingDate");

        try {

            Connection con = DBConnection.getConnection();

            String sql = "UPDATE billing SET patient_id=?, doctor_fee=?, medicine_charge=?, room_charge=?, test_charge=?, total_amount=?, payment_status=?, billing_date=? WHERE bill_id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, patientId);
            ps.setDouble(2, doctorFee);
            ps.setDouble(3, medicineCharge);
            ps.setDouble(4, roomCharge);
            ps.setDouble(5, testCharge);
            ps.setDouble(6, totalAmount);
            ps.setString(7, paymentStatus);
            ps.setString(8, billingDate);
            ps.setInt(9, billId);

            int rows = ps.executeUpdate();

            ps.close();

            if (rows > 0) {

                response.sendRedirect("ViewBillsServlet");

            } else {

                response.getWriter().println("Bill Update Failed!");

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}