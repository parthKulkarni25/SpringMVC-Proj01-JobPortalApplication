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
		<h3>Apply Job</h3>
		
		<form:form action="submitJob" method="post" modelAttribute="candidate">
			
			<table>
				<tbody>
					<tr>
						<td>Job Code</td>
						<td>
							<form:input path="job.jobCode" readonly="true" disabled="true"/>
						</td>
					</tr>
					<tr>
						<td>
							Candidate Name
						</td>
						<td>
							<form:input path="cname"/>
						</td>
					</tr>
					
					<tr>
						<td>
							Experience(Yrs)
						</td>
						<td>
							<form:input path="experiance"/>
						</td>
					</tr>
					
					<tr>
						<td>
							Expected Salary(LPA)
						</td>
						<td>
							<form:input path="expSalary"/>
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
			<a href='${pageContext.request.contextPath}/candidate/listCandidate'>Back to List</a>
		</p>
	</div>
	
</body>
</html>