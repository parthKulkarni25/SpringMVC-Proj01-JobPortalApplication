<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Job Portal</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center mb-5">Welcome to Job Portal</h1>
        
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card text-center">
                    <div class="card-header">
                        Recruiter
                    </div>
                    <div class="card-body">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#recruiterModal">
                            GO!!
                        </button>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card text-center">
                    <div class="card-header">
                        Candidate
                    </div>
                    <div class="card-body">
                        <button type="button" class="btn btn-success" onclick="window.location.href='${pageContext.request.contextPath}/candidate/listCandidate'; return false;">
                            GO!!
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Modal for Recruiter -->
    <div class="modal fade" id="recruiterModal" tabindex="-1" role="dialog" aria-labelledby="recruiterModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="recruiterModalLabel">Enter Company Name</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="companyName" class="col-form-label">Company Name:</label>
                        <input type="text" class="form-control" id="companyName" placeholder="Enter company name">
                    </div>
                </form>
            </div>
          <div class="modal-footer">
    		<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
    		<button type="button" class="btn btn-primary" onclick="submitFormAndRedirect()">Submit</button>
		</div>
  	 </div>
    </div>
</div>
<script>
    function submitFormAndRedirect() {
        var companyName = document.getElementById('companyName').value;
        window.location.href = '${pageContext.request.contextPath}/job/recruiter?company=' + encodeURIComponent(companyName);
    }
</script>
</body>
</html>
