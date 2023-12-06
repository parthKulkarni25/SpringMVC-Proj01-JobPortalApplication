<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Home</title>
    <!-- Bootstrap CSS and JavaScript -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        // Function to show Bootstrap modal
        function showNameModal() {
            $('#nameModal').modal('show');
        }
        function searchAndNavigate() {
            // Get the entered name from the input field
            var name = document.getElementById('name').value;

            // Redirect to the desired link
            window.location.href = '${pageContext.request.contextPath}/candidate/showMyApplication?cname=' + name;
        }
    </script>
</head>
<body>
    <h1 align="center">Welcome to Job Portal</h1>
    <h2 align="center">Companies are ..</h2>
   <h2>
        <!-- Use a button to trigger the modal -->
        <button type="button" class="btn btn-link" onclick="showNameModal()">Show My Applications</button>   
    </h2>

    <!-- Bootstrap modal -->
<div class="modal fade" id="nameModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Enter Your Name</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- Form inside the modal -->
                <form>
                    <div class="form-group">
                        <label for="name">Your Name:</label>
                        <input type="text" class="form-control" id="name" placeholder="Enter your name">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="searchAndNavigate()">SEARCH</button>
            </div>
        </div>
    </div>
</div>

<!-- Add the table-responsive class for better responsiveness -->
<div class="table-responsive">
    <table class="table table-bordered table-hover">
        <thead>
            <tr>
                <th>Company</th>
                <th>Job Profile</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="job" items="${jobs}">
                <c:url var="getLink" value="/candidate/showApplication">
                    <c:param name="jobCode" value="${job.jobCode}"/>
                </c:url>
                <tr>
                    <td>${job.company}</td>
                    <td>${job.jobProfile}</td>
                    <td>
                        <a class="btn btn-primary" href="${getLink}">Apply</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
