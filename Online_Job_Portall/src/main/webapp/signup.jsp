<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<%@include file="All_component/all_css.jsp" %>
</head>
<body style="background-color:#f0f1f2;">
<%@ include file="All_component/navbar.jsp" %>
<div class="container-fluid">
<div class="row p-5">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<div class="text-center">
<i class=" fa fa-user-plus fa-2x" aria-hidden="true">
</i>
<h5> Registration</h5>
</div>
<form action="signup" method="post">
<div class="form-group">
<label>Enter Full Name</label>
<input type="text" class="form-control" id="name" name="nm">
</div>

<div class="form-group">
<label>Enter Qualification</label>
<input type="text" class="form-control" id="qa" name="q">
</div>

<div class="form-group">
<label>Enter Email</label>
<input type="text" class="form-control" id="email" name="em">
</div>

<div class="form-group">
<label>Enter Password</label>
<input type="text" class="form-control" id="pass" name="ps">
</div>


<button type="button" class="btn btn-primary badge-pill btn-block">Registration</button>

</form>

</div>
</div>


</div>
</div>
</body>
</html>