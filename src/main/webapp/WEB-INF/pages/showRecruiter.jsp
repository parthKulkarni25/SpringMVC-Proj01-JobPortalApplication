<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Job Portal - Employer</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
    <style>
        body {
            background-color: #f8f9fa;
        }

        #wrapper {
            background-color: #17a2b8!important;
            padding: 10px 0;
            color: white;
        }

        #header {
            text-align: center;
        }

        #container {
            margin-top: 20px;
        }

        .table th,
        .table td {
            text-align: center;
        }

        .add-button {
            margin-top: 20px;
        }
		.table .thead-dark th {
    color: #fff;
    background-color: #17a2b8!important;
    border-color: #454d55;
}
        /* Additional styling can be added as needed */
    </style>
</head>
<body>

<div id="wrapper" class="text-center">
    <h2>Job Portal - Employer</h2>
</div>

<div id="container" class="container">
    <form action="${pageContext.request.contextPath}/candidate/showApplications" method="get">
        <table class="table table-bordered table-hover">
            <thead class="thead-dark">
                <tr>
                    <th></th>
                    <th>Company</th>
                    <th>Job Profile</th>
                    <th>Available Seats</th>
                    <th>Experience(Yrs)</th>
                    <th>Salary(LPA)</th>
                    <th>Job Code</th>
                    <th>Count</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="job" items="${jobs}">
                    <tr>
                        <td>
                           <input type="hidden" name="jobCode" value="${job.jobCode}" />
                           <input type="hidden" name="company" value="${job.company}" />
                           <input type="hidden" name="jobProfile" value="${job.jobProfile}" />
                           <input type="hidden" name="availableSeats" value="${job.availableSeats}" />
                           <input type="hidden" name="experience" value="${job.experience}" />
                           <input type="hidden" name="salary" value="${job.salary}" />
                        </td>
                        <td>${job.company}</td>
                        <td>${job.jobProfile}</td>
                        <td>${job.availableSeats}</td>
                        <td>${job.experience}</td>
                        <td>${job.salary}</td>
                        <td>${job.jobCode}</td>
                        <td>${job.candidates.size()}</td>
                        <td>
                            <input type="submit" value="Show Applications" class="btn btn-primary" />
                            <a href="/job/showFormUpdate?jobCode=${job.jobCode}" class="btn btn-warning ml-2">UPDATE</a>
                            <a href="/job/removeJob?jobCode=${job.jobCode}" class="btn btn-danger ml-2">Remove</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </form>
    <input type="button" value="Add Job" onclick="window.location.href='showJobForm'; return false;" class="btn btn-success add-button"/>
</div>

<!-- Bootstrap and jQuery scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
