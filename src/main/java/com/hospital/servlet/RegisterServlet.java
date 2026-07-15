package com.hospital.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        System.out.println("Full Name : " + fullname);
        System.out.println("Email : " + email);
        System.out.println("Mobile : " + mobile);
        System.out.println("Username : " + username);
        System.out.println("Password : " + password);
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/hospital_db",
                    "root",
                    "Cham@120");

            String sql = "INSERT INTO users(fullname,email,mobile,username,password) VALUES(?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, fullname);
            ps.setString(2, email);
            ps.setString(3, mobile);
            ps.setString(4, username);
            ps.setString(5, password);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                response.getWriter().println("Registration Successful!");
            } else {
                response.getWriter().println("Registration Failed!");
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}