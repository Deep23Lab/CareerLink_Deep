package com.entity;

public class Register {
	 private String name;
	    private String email;
	    private String qualification;
	    private String contactNumber;
	    private String password;
		public Register() {
			super();
			// TODO Auto-generated constructor stub
		}
		public Register(String name, String email, String qualification, String contactNumber, String password) {
			super();
			this.name = name;
			this.email = email;
			this.qualification = qualification;
			this.contactNumber = contactNumber;
			this.password = password;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getQualification() {
			return qualification;
		}
		public void setQualification(String qualification) {
			this.qualification = qualification;
		}
		public String getContactNumber() {
			return contactNumber;
		}
		public void setContactNumber(String contactNumber) {
			this.contactNumber = contactNumber;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		

}
