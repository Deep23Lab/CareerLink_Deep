package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.entity.Register;

public class RegDao {
		private Connection conn;

		public RegDao(Connection conn) {
			super();
			this.conn = conn;
		}
    
		    public boolean isDuplicate2(String email, String username, String mob) {
		        boolean isValid2 = false;
		        try {
		            PreparedStatement ps = conn.prepareStatement("SELECT * FROM UserRegistration WHERE email = ? OR name = ? OR contactNumber = ?");
		        
		            ps.setString(1, email);
		            ps.setString(2, username);
		            ps.setString(3, mob);

		            try (ResultSet rs = ps.executeQuery()) {
		                return rs.next(); // Return true if a record is found (duplicate)
		            }
		        
		        } catch (SQLException e) {
		            e.printStackTrace();
		            throw new RuntimeException("Error checking duplicate records", e);
		        }
		    }
		 
		        public int registerCustomer(Register cr) throws SQLException {
		        	 int x = 0;
		            String query = "INSERT INTO userregistration (name,email,qualification, contactNumber, password) VALUES (?, ?, ?, ?, ?)";
		            try (PreparedStatement ps = conn.prepareStatement(query)) {
		                ps.setString(1, cr.getName());
		                ps.setString(2, cr.getEmail());
		                ps.setString(3, cr.getQualification());
		                ps.setString(4, cr.getContactNumber());
		                ps.setString(5, cr.getPassword());

		            x = ps.executeUpdate();
		        } catch (SQLException e) {
		            e.printStackTrace();
		            throw new RuntimeException("Error during registration", e);
		        }

		        return x;
		    }

				
		        public boolean customerCheck(Register r) {
		            boolean isValid = false;
		            try {
		                PreparedStatement ps = conn.prepareStatement("select * from userregistration where name = ? and password = ?");
		                ps.setString(1, r.getName());
		                ps.setString(2, r.getPassword());
		                ResultSet rs = ps.executeQuery();
		                if (rs.next() == true) {
		                    isValid = true;
		                } else {
		                    isValid = false;
		                }

		            } catch (SQLException e) {
		                e.printStackTrace();
		            }
		            return isValid;
		        }

				

		        
		        
}
