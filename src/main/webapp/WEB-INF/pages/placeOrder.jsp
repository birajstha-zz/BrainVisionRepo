<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order</title>
</head>
<body>
	<%@ include file="commonHeader.jspf" %>
	<c:if test="${message ne null }">
		<div class="alert alert-success">	
			<strong>${message }</strong>
		</div>
	</c:if>
	
	<h2> Enter your Details </h2>
	<form action="bookTicket" method="post">
		Name: <input name = "name" type="text" class="form-control" placeholder="Enter Name" >
		 
		Email: <input name = "email" type="email"	class="form-control" placeholder="Enter email" >

		Address: <input name = "address" type="text" class="form-control" placeholder="Enter Address" >
		
		<br/>
		
		<button type="submit" class="btn btn-primary">Book</button>
	</form>

	<%@ include file="commonFooter.jspf" %>

</body>
</html>