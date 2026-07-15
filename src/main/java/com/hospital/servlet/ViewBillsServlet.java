package com.hospital.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.hospital.db.DBConnection;
import com.hospital.model.Billing;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ViewBillsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ArrayList<Billing> billList = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM billing";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Billing bill = new Billing();

                bill.setBillId(rs.getInt("bill_id"));
                bill.setPatientId(rs.getInt("patient_id"));
                bill.setDoctorFee(rs.getDouble("doctor_fee"));
                bill.setMedicineCharge(rs.getDouble("medicine_charge"));
                bill.setRoomCharge(rs.getDouble("room_charge"));
                bill.setTestCharge(rs.getDouble("test_charge"));
                bill.setTotalAmount(rs.getDouble("total_amount"));
                bill.setPaymentStatus(rs.getString("payment_status"));
                bill.setBillingDate(rs.getString("billing_date"));

                billList.add(bill);
            }

            request.setAttribute("billList", billList);

            request.getRequestDispatcher("viewBills.jsp")
                   .forward(request, response);

            rs.close();
            ps.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}