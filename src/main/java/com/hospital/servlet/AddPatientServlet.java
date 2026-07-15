package com.hospital.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.hospital.db.DBConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddPatientServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String disease = request.getParameter("disease");

        try {

            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO patient(name, age, gender, phone, disease) VALUES(?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setInt(2, age);
            ps.setString(3, gender);
            ps.setString(4, phone);
            ps.setString(5, disease);

            int rows = ps.executeUpdate();

            ps.close();

            if (rows > 0) {

                response.setContentType("text/html");

                response.getWriter().println(
                    "<script>" +
                    "alert('Patient Added Successfully!');" +
                    "window.location='DashboardServlet';" +
                    "</script>"
                );

            } else {

                response.getWriter().println(
                    "<script>" +
                    "alert('Failed to Add Patient!');" +
                    "window.history.back();" +
                    "</script>"
                );

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}