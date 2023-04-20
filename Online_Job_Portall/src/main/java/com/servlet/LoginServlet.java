package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.User;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {


	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		
try {
	
	String emails=req.getParameter("em");
	String passss=req.getParameter("ps");
	User u=new User();
	
	HttpSession session =req.getSession();
	
	
	
	
	if("admin@gmail.com".equals(emails) && "admin12".equals(passss))
	{
		
		session.setAttribute("nobj", u);
		u.setRole("admin");
		resp.sendRedirect("admin.jsp");
	}
	
	
} catch(Exception e) {
	e.printStackTrace();
	
}
	}
	
	
	

}
