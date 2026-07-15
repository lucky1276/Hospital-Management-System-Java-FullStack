package com.hospital.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DashboardServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/hospital_db",
                    "root",
                    "Cham@120");

            // Total Patients
            PreparedStatement ps1 = con.prepareStatement("SELECT COUNT(*) FROM patient");
            ResultSet rs1 = ps1.executeQuery();
            int totalPatients = 0;
            if (rs1.next()) {
                totalPatients = rs1.getInt(1);
            }

            // Total Doctors
            PreparedStatement ps2 = con.prepareStatement("SELECT COUNT(*) FROM doctor");
            ResultSet rs2 = ps2.executeQuery();
            int totalDoctors = 0;
            if (rs2.next()) {
                totalDoctors = rs2.getInt(1);
            }

            // Total Appointments
            PreparedStatement ps3 = con.prepareStatement("SELECT COUNT(*) FROM appointment");
            ResultSet rs3 = ps3.executeQuery();
            int totalAppointments = 0;
            if (rs3.next()) {
                totalAppointments = rs3.getInt(1);
            }

            // Total Bills
            PreparedStatement ps4 = con.prepareStatement("SELECT COUNT(*) FROM billing");
            ResultSet rs4 = ps4.executeQuery();
            int totalBills = 0;
            if (rs4.next()) {
                totalBills = rs4.getInt(1);
            }
         // Total Revenue
            PreparedStatement ps5 = con.prepareStatement(
                    "SELECT IFNULL(SUM(total_amount),0) FROM billing");
            ResultSet rs5 = ps5.executeQuery();

            double totalRevenue = 0;

            if (rs5.next()) {
                totalRevenue = rs5.getDouble(1);
            }

            // Paid Bills
            PreparedStatement ps6 = con.prepareStatement(
                    "SELECT COUNT(*) FROM billing WHERE payment_status='Paid'");
            ResultSet rs6 = ps6.executeQuery();

            int paidBills = 0;

            if (rs6.next()) {
                paidBills = rs6.getInt(1);
            }

            // Pending Bills
            PreparedStatement ps7 = con.prepareStatement(
                    "SELECT COUNT(*) FROM billing WHERE payment_status='Pending'");
            ResultSet rs7 = ps7.executeQuery();

            int pendingBills = 0;

            if (rs7.next()) {
                pendingBills = rs7.getInt(1);
            }

            request.setAttribute("totalPatients", totalPatients);
            request.setAttribute("totalDoctors", totalDoctors);
            request.setAttribute("totalAppointments", totalAppointments);
            request.setAttribute("totalBills", totalBills);

            request.setAttribute("totalRevenue", totalRevenue);
            request.setAttribute("paidBills", paidBills);
            request.setAttribute("pendingBills", pendingBills);

            rs1.close();
            rs2.close();
            rs3.close();
            rs4.close();
            rs5.close();
            rs6.close();
            rs7.close();

            ps1.close();
            ps2.close();
            ps3.close();
            ps4.close();
            ps5.close();
            ps6.close();
            ps7.close();

            con.close();

            request.getRequestDispatcher("dashboard.jsp")
                   .forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}