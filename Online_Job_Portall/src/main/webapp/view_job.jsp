<%@page import="com.entity.Jobs"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.jobDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Job</title>
<%@include file="All_component/all_css.jsp" %>
</head>
<body style ="background-color:#f0f1f2;" >
<%@include file="All_component/navbar.jsp" %>


<div class="container">
<div class="row">
<div class="col-md-12">

<h5 class="text-center text-primary">All Job</h5>


<% jobDAO dao=new jobDAO( DBConnect.getConn()); 
List<Jobs> list =dao.getAllJobs();
for(Jobs j :list)
{
	%>

<div class="card mt-2">
<div class="card-body">
<div class="text-center text-primary"> 
<i class="fa fa-clipboard fa-2x"></i>
<h6><%=j.getTitle() %></h6>
<p><%=j.getDescription() %></p>
<br>
<div class="form-row">
<div class="form-group col-md-3">
<input type="text" class="form-control form-control-sm" value="Loaction: <%=j.getLocation() %>"   readonly>
</div>
<div class="form-group col-md-3">
<input type="text" class="form-control form-control-sm" value="Category:  <%=j.getCategory() %>"   readonly>
</div>
<div class="form-group col-md-3">
<input type="text" class="form-control form-control-sm" value="Status: <%=j.getStatus() %>"   readonly>
</div>


</div>
<h6>Publish Date :2<%=j.getPdate() %></h6><br>
<div class="text-center">

<a href="edit.jsp?id=<%=j.getId() %>" class="btn btn-sm bg-success text-white">Edit</a>


<a href="#" class="btn btn-sm bg-danger text-white">Delete</a>
</div>

</div>
</div>



<%
}

%></div>


</div>

</div>


</div>




</body>
</html>