package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.JobDAO;
import com.dao.RegDao;
import com.db.DBConnect;
import com.entity.Register;

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
    
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
 {
	    // Retrieve form parameters
	    String name = req.getParameter("name");
	    String email = req.getParameter("email");
	    String qualification = req.getParameter("qualification");
	    String contactNumber = req.getParameter("contactNumber");
	    String password =req.getParameter("password");

	    // Create a Register object with the received parameters
	    Register cr = new Register();
	    cr.setName(name);
	    cr.setEmail(email);
	    cr.setQualification(qualification);
	    cr.setContactNumber(contactNumber);
	    cr.setPassword(password);

	    RegDao dao = new RegDao(DBConnect.getConn());
	    HttpSession session =req.getSession();


	    // Check if email, username, or mobile already exists
	    boolean isValid2 = dao.isDuplicate2(email, name, contactNumber);

	    if (isValid2) {
	        // Set error message if duplicates found
	    	session.setAttribute("msg", "User already exists");
	        resp.sendRedirect("login.jsp");
	    } else {
	        try {
	            // Register customer and check the result
	            int x = dao.registerCustomer(cr);
	            if (x > 0) {
	                // Registration successful
	            	session.setAttribute("msg", "Registration successful please Login...");
	                resp.sendRedirect("login.jsp");
	            } else {
	                // Unable to register
	            	session.setAttribute("msg", "Unable to Register");
	                resp.sendRedirect("register.jsp");
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	            // Unable to register due to exception
	            session.setAttribute("msg", "Unable to Register");
	            resp.sendRedirect("register.jsp");
	        }
	    }

	    // Forward request to appropriate JSP page
//	    RequestDispatcher rd = getServletContext().getRequestDispatcher("/" + target);
//	    rd.forward(req, resp);
	}

}


