package com.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.RegDao;
import com.db.DBConnect;
import com.entity.Register;
import com.entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			User u=new User();
			String um=req.getParameter("username");
			String ps=req.getParameter("password");
			
			Register r = new Register();
			r.setName(um);
			r.setPassword(ps);
			
			RegDao dao = new RegDao(DBConnect.getConn());
			HttpSession session =req.getSession();
			
			if("admin23".equals(um) && "admin@123".equals(ps)){
				session.setAttribute("userobj", u);
				u.setRole("admin");
				resp.sendRedirect("admin.jsp");
			}
			else{
				boolean x = dao.customerCheck(r);
		        if (x) {
		        	User authenticatedUser = new User();
		            authenticatedUser.setRole("user");
		            session.setAttribute("userobj", authenticatedUser);
		            session.setAttribute("username", um);
		            resp.sendRedirect("userJobPage.jsp");
		        } else {
		            session.setAttribute("msg", "Invalid credentials. Please try again.");
		            resp.sendRedirect("login.jsp");
		        }
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	

}
