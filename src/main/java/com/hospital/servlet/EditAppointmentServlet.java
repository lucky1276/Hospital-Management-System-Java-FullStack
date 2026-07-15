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

public class EditAppointmentServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int appointmentId = Integer.parseInt(request.getParameter("id"));

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/hospital_db",
                    "root",
                    "Cham@120");

            String sql = "SELECT * FROM appointment WHERE appointment_id=?";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, appointmentId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                request.setAttribute("appointmentId", rs.getInt("appointment_id"));
                request.setAttribute("patientId", rs.getInt("patient_id"));
                request.setAttribute("doctorId", rs.getInt("doctor_id"));
                request.setAttribute("appointmentDate", rs.getString("appointment_date"));
                request.setAttribute("appointmentTime", rs.getString("appointment_time"));
                request.setAttribute("status", rs.getString("status"));

                request.getRequestDispatcher("updateAppointment.jsp")
                       .forward(request, response);
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}