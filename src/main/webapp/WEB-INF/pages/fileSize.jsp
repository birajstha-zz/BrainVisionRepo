<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

</head>
<body>
	<%@ include file="commonHeader.jspf"%>

	<section id="showcase" class="container-fluid">
		<div>
			<h1 class="text-primary">File Size Calculator</h1>
			<p></p>
		</div>

		<div class="container col-sm-8 col-md-8 col-lg-4">
			<form name="myForm" action="calculate" method="post">
				<table border="1" style="width: 100%; font-size: 16px;">

					<tbody>
						<tr>
							<td width=50%>Amplifier :</td>
							<td width=50%><select name="amplifier">
									<option>BrainAmp</option>
									<option>ActiCHamp (Plus)</option>
									<option>LiveAmp</option>
							</select></td>
						</tr>

						<tr>
							<td>Sampling Rate (Hz):</td>
							<td><input type="number" name="sample_rate" value=""
								size="10" /></td>
						</tr>

						<tr>
							<td>No. of channels :</td>
							<td><input type="number" name="channels" value="" size="10" /></td>
						</tr>

						<tr>
							<td>Time (Mins) :</td>
							<td><input type="number" name="time" value="" size="10" /></td>
						</tr>

						<tr>
							<td></td>
							<td><button class="button_1" type="submit">Calculate</button></td>
						</tr>
					</tbody>
				</table>


				<c:if test="${answer ne 0 }">
					<table class="table-dark table-borderless"
						style="width: 100%; font-size: 16px;">
						<tbody>
							<tr>
								<td width=50%>Amplifier :</td>
								<td width=50%>${sessionScope.amplifier}</td>
							</tr>

							<tr>
								<td>Sampling Rate (Hz):</td>
								<td>${sessionScope.sample_rate}</td>
							</tr>

							<tr>
								<td>No. of channels :</td>
								<td>${sessionScope.channels}</td>
							</tr>

							<tr>
								<td>Time (Mins) :</td>
								<td>${sessionScope.time}</td>
							</tr>

						</tbody>
					</table>
					<div class="alert alert-warning">
						<h4>The approx file size is :</h4>
						<h3>${answer}MB</h3>
					</div>
				</c:if>
			</form>

			<c:if test="${error ne null }">
				<div class="alert alert-danger">
					<strong>${error}</strong>
				</div>
			</c:if>
		</div>
	</section>
	<%@ include file="commonFooter.jspf"%>
</body>
</html>