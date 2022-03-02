<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
</head>
<body>
	<%@ include file="commonHeader.jspf" %>
	<div class="container">
	<h2 class = "text-primary"> Choose what to calculate </h2>
	
	<table class="table table-hover table-bordered">
		<thead>
			<th>Name</th>
			<th>Email</th>
			<th>Address</th>
			<th>Ticket No</th>
		</thead>
		<tbody>
			<c:forEach var="passenger"  items="${passengerList}">
				<tr>
					<td>${passenger.name }</td>
					<td>${passenger.email }</td>
					<td>${passenger.address }</td>
					<td>${passenger.ticketno }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	<%@ include file="commonFooter.jspf" %>

</body>
</html>