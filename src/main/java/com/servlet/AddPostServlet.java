package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.JobDAO;
import com.db.DBConnect;
import com.entity.Jobs;

@WebServlet("/addjob")
public class AddPostServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String title =req.getParameter("title");
			String location =req.getParameter("location");
			String category =req.getParameter("category");
			String status =req.getParameter("status");
			String description =req.getParameter("description");
			
			Jobs j =new Jobs();
			j.setTitle(title);
			j.setDescription(description);
			j.setLocation(location);
			j.setStatus(status);
			j.setCategory(category);
			
			HttpSession session =req.getSession();
			
			JobDAO dao = new JobDAO(DBConnect.getConn());
			boolean f=dao.addJobs(j);
			if(f)
			{
				session.setAttribute("msg", "Job Posted Sucessfully...");
				resp.sendRedirect("add_job.jsp");
			} else{
				session.setAttribute("msg", "Something Wrong on Server...");
				resp.sendRedirect("add_job.jsp");
				
			}
		}catch(Exception e) {
			
		}

	}
	
	

}
