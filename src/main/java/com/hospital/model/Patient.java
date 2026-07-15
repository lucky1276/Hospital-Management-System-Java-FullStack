
	package com.hospital.model;

	public class Patient {

	    private int patientId;
	    private String name;
	    private int age;
	    private String gender;
	    private String phone;
	    private String disease;

	    public Patient() {
	    }

	    public int getPatientId() {
	        return patientId;
	    }

	    public void setPatientId(int patientId) {
	        this.patientId = patientId;
	    }

	    public String getName() {
	        return name;
	    }

	    public void setName(String name) {
	        this.name = name;
	    }

	    public int getAge() {
	        return age;
	    }

	    public void setAge(int age) {
	        this.age = age;
	    }

	    public String getGender() {
	        return gender;
	    }

	    public void setGender(String gender) {
	        this.gender = gender;
	    }

	    public String getPhone() {
	        return phone;
	    }

	    public void setPhone(String phone) {
	        this.phone = phone;
	    }

	    public String getDisease() {
	        return disease;
	    }

	    public void setDisease(String disease) {
	        this.disease = disease;
	    }
	}

