package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.jobDAO;
import com.entity.Jobs;
@WebServlet("/Post_Job")
public class AddPostServlet extends HttpServlet {

	

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
		String title=req.getParameter("title");
		String location=req.getParameter("location");
		String category=req.getParameter("category");
		String status=req.getParameter("status");
		String description=req.getParameter("description");
		
		Jobs j= new Jobs();
		j.setTitle(title);
		j.setDescription(description);
		j.setLocation(location);
		j.setStatus(status);
		j.setCategory(category);
		
		HttpSession session =req.getSession();
		
		
		jobDAO dao=new jobDAO(DBConnect.getConn());
		
		boolean f=dao.addJobs(j);
		if(f)
		{
			
			session.setAttribute("msg", "Job Post Sucessfuly..");//Post_job ma msg lakhyu e check
			resp.sendRedirect("Post_Job.jsp");
		}else {
			session.setAttribute("msg", "Something wrong on server..");
			resp.sendRedirect("Post_Job.jsp");
		}
			
		
	}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
	
	
	
	
	
	

	}
}