package com.web.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Bank {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int acno;
	private String name;
	private String password;
	private String cpassword;
	private double amount;
	private String address;
	private String mobile_no;
	private String status;
	
	public Bank() {
		super();
	}
	
	public Bank(int acno, String name, String password, String cpassword, double amount, String address,
			String mobile_no, String status) {
		super();
		this.acno = acno;
		this.name = name;
		this.password = password;
		this.cpassword = cpassword;
		this.amount = amount;
		this.address = address;
		this.mobile_no = mobile_no;
		this.status = status;
	}

	public int getAcno() {
		return acno;
	}
	public void setAcno(int acno) {
		this.acno = acno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobile_no() {
		return mobile_no;
	}
	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "SdfcBank [acno=" + acno + ", name=" + name + ", password=" + password + ", cpassword=" + cpassword
				+ ", amount=" + amount + ", address=" + address + ", mobile_no=" + mobile_no + ", status=" + status
				+ "]";
	}
	

}
