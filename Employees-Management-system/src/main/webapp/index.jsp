<%@page import="com.entity.Emp"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.EmpDAO"%>
<%@page import="java.sql.Connection" %>
<%@page import="com.conn.DBConnect" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<meta charset="UTF-8">

<%@include file="allcss.jsp"%>
<title>Insert title here</title>
</head>
<body>
     
     
     <%@include file="navbar.jsp" %>
     
     
    <%--  <% Connection conn=DBConnect.getConn(); 
     
     out.print(conn);
     %> --%>
     
     
     <div class="container p-3">
     <div class="card">
					<div class="card-body">
     <p class="text-center fs-1">All Employee Detail</p>
     <c:if test="${not empty succMsg }">
						<p class="text-center text-success">${succMsg}</p>
						<c:remove var="succMsg "></c:remove>
						
						</c:if>
						
						<c:if test="${not empty errorMsg }">
						<p class="text-center text-success">${errorMsg}</p>
						<c:remove var="succMsg "></c:remove>
						
						</c:if>
						
     
     <table class="table">
  <thead>
    <tr>
      <th scope="col">Full Name</th>
      <th scope="col">Date Of Birth</th>
      <th scope="col">Address</th>
      <th scope="col">Designation</th>
      <th scope="col">Email</th>
      <th scope="col">Salary</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>
  <tbody>
  
  <%
  EmpDAO dao=new EmpDAO(DBConnect .getConn());
  
  
 List<Emp> list= dao.getAllEmployee();
 
 
 
 for(Emp e:list)
 {%>
  <tr>
      <td><%=e.getFullname() %></td>
      <td><%=e.getDob() %></td>
      <td><%=e.getAddress() %></td>
      <td><%=e.getDesignation() %></td>
       <td><%=e.getEmail() %></td>
      <td><%=e.getSalary() %></td>
       <td>
   
<a href="editEmp.jsp?id=<%=e.getId() %>" class="btn btn-sm btn-primary">Edit</a>
 <td>

<a href="delete?id=<%=e.getId() %>" class="btn btn-sm btn-danger ms-1 ">Delete</a>
</td>
</td>
       </tr>
       
 
 
 <%}
 
 %>
 
 
 
 
 
   
  
  </tbody>
</table>
</div>
</div>
     
     </div>
</body>
</html>