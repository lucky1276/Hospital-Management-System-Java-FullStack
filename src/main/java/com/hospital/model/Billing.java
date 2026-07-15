package com.hospital.model;

public class Billing {

    private int billId;
    private int patientId;
    private double doctorFee;
    private double medicineCharge;
    private double roomCharge;
    private double testCharge;
    private double totalAmount;
    private String paymentStatus;
    private String billingDate;

    public Billing() {
    }

    public Billing(int billId, int patientId, double doctorFee,
                   double medicineCharge, double roomCharge,
                   double testCharge, double totalAmount,
                   String paymentStatus, String billingDate) {

        this.billId = billId;
        this.patientId = patientId;
        this.doctorFee = doctorFee;
        this.medicineCharge = medicineCharge;
        this.roomCharge = roomCharge;
        this.testCharge = testCharge;
        this.totalAmount = totalAmount;
        this.paymentStatus = paymentStatus;
        this.billingDate = billingDate;
    }

    public int getBillId() {
        return billId;
    }

    public void setBillId(int billId) {
        this.billId = billId;
    }

    public int getPatientId() {
        return patientId;
    }

    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    public double getDoctorFee() {
        return doctorFee;
    }

    public void setDoctorFee(double doctorFee) {
        this.doctorFee = doctorFee;
    }

    public double getMedicineCharge() {
        return medicineCharge;
    }

    public void setMedicineCharge(double medicineCharge) {
        this.medicineCharge = medicineCharge;
    }

    public double getRoomCharge() {
        return roomCharge;
    }

    public void setRoomCharge(double roomCharge) {
        this.roomCharge = roomCharge;
    }

    public double getTestCharge() {
        return testCharge;
    }

    public void setTestCharge(double testCharge) {
        this.testCharge = testCharge;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public String getPaymentStatus() {
        return paymentStatus;
    }

    public void setPaymentStatus(String paymentStatus) {
        this.paymentStatus = paymentStatus;
    }

    public String getBillingDate() {
        return billingDate;
    }

    public void setBillingDate(String billingDate) {
        this.billingDate = billingDate;
    }
}