package com.hospital.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddAppointmentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int patientId = Integer.parseInt(request.getParameter("patientId"));
        int doctorId = Integer.parseInt(request.getParameter("doctorId"));
        String appointmentDate = request.getParameter("appointmentDate");
        String appointmentTime = request.getParameter("appointmentTime");
        String status = request.getParameter("status");

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/hospital_db",
                    "root",
                    "Cham@120");

            String sql = "INSERT INTO appointment(patient_id, doctor_id, appointment_date, appointment_time, status) VALUES(?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, patientId);
            ps.setInt(2, doctorId);
            ps.setString(3, appointmentDate);
            ps.setString(4, appointmentTime);
            ps.setString(5, status);

            int rows = ps.executeUpdate();

            ps.close();
            con.close();

            if (rows > 0) {

                response.setContentType("text/html");

                response.getWriter().println(
                    "<script>" +
                    "alert('Appointment Booked Successfully!');" +
                    "window.location='DashboardServlet';" +
                    "</script>"
                );

            } else {

                response.getWriter().println(
                    "<script>" +
                    "alert('Failed to Book Appointment!');" +
                    "window.history.back();" +
                    "</script>"
                );

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}