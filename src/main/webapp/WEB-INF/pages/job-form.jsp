<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SAVE CUSTOMER</title>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/add-customer-style.css" />
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>Job Portal</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Add Job</h3>
		
		<form:form action="saveJob" method="post" modelAttribute="job">
			
			<!-- need to associate this data with customer id -->
			<form:hidden path="jobCode"/>
		
		
			<table>
				<tbody>
					<tr>
						<td>
							Job Profile
						</td>
						<td>
							<form:input path="jobProfile"/>
						</td>
					</tr>
					
					<tr>
						<td>
							Available Seats
						</td>
						<td>
							<form:input path="availableSeats"/>
						</td>
					</tr>
					
					<tr>
						<td>
							Experience
						</td>
						<td>
							<form:input path="experience"/>
						</td>
					</tr>
					<tr>
						<td>Salary</td>
						<td>
							<form:input path="salary"/>
						</td>
					</tr>
					<tr>
						<td>Company</td>
						<td>
							<form:input path="company" readonly="true"/>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<input type='submit' value='save' class='save'/>
						</td>
					</tr>
				
				</tbody>
			</table>	
		</form:form>
	</div>
	
	<div style='clear;both;'>
		<p>
			<a href='${pageContext.request.contextPath}/job/home'>Back to Home</a>
		</p>
	</div>
	
</body>
</html>