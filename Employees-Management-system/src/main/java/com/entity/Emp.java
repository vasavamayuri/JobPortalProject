package com.entity;

public class Emp {

	
	
	
	private int id;
	private String fullname;
	private String dob;
	private String address;
	private String designation;
	private String email;
	private String salary;
	public Emp() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Emp(String fullname, String dob, String address, String designation, String email, String salary) {
		super();
		
		this.fullname = fullname;
		this.dob = dob;
		this.address = address;
		this.designation = designation;
		this.email = email;
		this.salary = salary;
	}
	
	
	public Emp(int id, String fullname, String dob, String address, String designation, String email, String salary) {
		super();
		this.id = id;
		this.fullname = fullname;
		this.dob = dob;
		this.address = address;
		this.designation = designation;
		this.email = email;
		this.salary = salary;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	@Override
	public String toString() {
		return "Emp [id=" + id + ", fullname=" + fullname + ", dob=" + dob + ", address=" + address + ", designation="
				+ designation + ", email=" + email + ", salary=" + salary + "]";
	}
	
	
	
	
	
	
	
	
}
