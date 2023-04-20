<%@page import="com.entity.Jobs"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.jobDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Job</title>
<%@include file="All_component/all_css.jsp" %>
</head>
<body style="background-color:#f0f1f2;">
<%@include file="All_component/navbar.jsp" %>

<div class="container p-2">
<div class="col-md-10 offset-md-1">
<div class="card">
<div class="card-body">


<div class="text-center text-success">
<i class="fas fa-user-friends fa-3x"></i>
<% int id=Integer.parseInt(request.getParameter("id"));
jobDAO  dao= new jobDAO(DBConnect.getConn());
Jobs j=dao.getJobById(id);
%>




<h5>Edit Jobs</h5>
</div>


<form action="Post_Job" method="post">
<div class="form=group">
<label>Enter Title</label>
<input type="text" class="form-control" required name="title" value="<%=j.getTitle() %>">
</div>


<div class="form-row">
<div class="form-group col-md-4">
<label>Location</label>
<select name="location"  class="custom-select">
<option value="<%=j.getLocation() %>" ><%=j.getLocation() %></option>
<option value="odisha">Odisha</option>
<option value="gujarat">Gujarat</option>
<option value="delhi">Delhi</option>
<option value="banglore">Banglore</option>
<option value="chennai">Chennai</option>
<option value="hydrabad">Hydrabad</option>
</select>
</div>



<div class="form-group col-md-4">
<label>Category</label>
<select class="custom-select" name="category">
<option value="<%=j.getCategory() %>" ><%=j.getCategory() %></option>
<option value="it">IT</option>
<option value="developer">Developer</option>
<option value="Engineer">Engineer</option>
<option value="teacher">Teacher</option>
</select>
</div>



<div class="form-group col-md-4">
<label>Status</label>
<select name="status" class="custom-select">
<option class="Active"  value="<%=j.getStatus() %>"><%=j.getStatus() %></option>
<option class="Inactive" value="inactive">Inactive</option></select>
</div>
</div>
<div class="form-group">
<label> Enter Description</label>
<textarea class="form-control" required rows="6" cols="" name="description" ></textarea>
</div>

<button type="submit"   class="btn btn-success">Publish Job</button>

</form>

</div>
</div>
</div>
</div>

</body>
</html>