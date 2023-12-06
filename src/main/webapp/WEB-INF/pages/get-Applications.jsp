<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Applications List</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <!-- Your custom styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/add-customer-style.css" />
    <style>
        body {
            background-color: #f8f9fa;
        }

        #wrapper {
            background-color: #343a40;
            padding: 10px 0;
            color: white;
        }

        #header {
            text-align: center;
        }

        .container {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        h3 {
            color: #007bff;
        }

        .table th,
        .table td {
            text-align: center;
        }

        .btn-back {
            color: #ffffff;
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-back:hover {
            color: #ffffff;
            background-color: #0056b3;
            border-color: #0056b3;
        }
    </style>
</head>

<body>

   <div class="container-fluid bg-info py-3">
    <div class="container text-center">
        <h2 class="text-blue mb-0">Job Portal</h2>
    </div>
</div>


    <div class="container mt-4">
        <h3>Applications List</h3>

        <!-- Bootstrap table to display the list of candidates -->
        <table class="table table-bordered">
            <thead class="thead-light">
                <tr>
                	<th scope="col">Company</th>
                    <th scope="col">Candidate Name</th>
                    <!-- Add more headers as needed based on your Candidate class properties -->
                    <th scope="col">Experience</th>
                    <th scope="col">Expected Salary</th>
                    <th scope="col">Job Code</th>
                </tr>
            </thead>
            <tbody>
                <!-- Loop through the candidates and display each row -->
                <c:forEach var="candidate" items="${candidates}">
                    <tr>
                    	<td>${candidate.job.company}</td>
                        <td>${candidate.cname}</td>
                        <!-- Add more columns as needed based on your Candidate class properties -->
                        <td>${candidate.experiance}</td>
                        <td>${candidate.expSalary}</td>
                        <td>${candidate.job.jobCode}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Back to List link -->
        <div class="mt-3">
            <p>
                <a href='${pageContext.request.contextPath}/candidate/listCandidate' class="btn btn-back">Back to List</a>
            </p>
        </div>
    </div>

    <!-- Bootstrap and jQuery scripts (make sure to include jQuery before Bootstrap JS) -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>

</html>
