package com.hospital.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.hospital.db.DBConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddBillServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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

            String sql = "INSERT INTO billing(patient_id, doctor_fee, medicine_charge, room_charge, test_charge, total_amount, payment_status, billing_date) VALUES(?,?,?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, patientId);
            ps.setDouble(2, doctorFee);
            ps.setDouble(3, medicineCharge);
            ps.setDouble(4, roomCharge);
            ps.setDouble(5, testCharge);
            ps.setDouble(6, totalAmount);
            ps.setString(7, paymentStatus);
            ps.setString(8, billingDate);

            int rows = ps.executeUpdate();

            ps.close();

            if (rows > 0) {

                response.setContentType("text/html");

                response.getWriter().println(
                    "<script>" +
                    "alert('Bill Generated Successfully!');" +
                    "window.location='DashboardServlet';" +
                    "</script>"
                );

            } else {

                response.getWriter().println(
                    "<script>" +
                    "alert('Failed to Generate Bill!');" +
                    "window.history.back();" +
                    "</script>"
                );

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}