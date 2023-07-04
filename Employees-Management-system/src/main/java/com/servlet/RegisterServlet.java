package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DBConnect;
import com.dao.EmpDAO;
import com.entity.Emp;

@WebServlet("/register")

public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String fullname=req.getParameter("fullname");
		String dob=req.getParameter("dob");
		String address=req.getParameter("address");
		String designation=req.getParameter("designation");
		String email=req.getParameter("email");
		String salary=req.getParameter("salary");
		
		Emp emp= new Emp(fullname,dob,address,designation,email,salary); 
		
		
		//System.out.println(emp);
		EmpDAO dao=new EmpDAO(DBConnect.getConn());
		HttpSession session=req.getSession();
		boolean f=dao.addEmployee(emp);
		
		
		
		if(f)
		{
			session.setAttribute("succMsg", "Employee submit Successfull");
			resp.sendRedirect("addEmp.jsp");
			//System.out.println("Employee submit Successfull");
		}
		else {
			
			session.setAttribute("errorMsg", "Something run server");
			resp.sendRedirect("addEmp.jsp");
			
			//System.out.println("somthing wrong on server");
			
		}
	}
	
	
	
	
	

}
