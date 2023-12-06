<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>SAVE CUSTOMER</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <!-- Your custom styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/add-customer-style.css" />
</head>

<body>
    <!-- Bootstrap container for better layout -->
    <div class="container">
        <!-- Bootstrap navigation bar -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Job Portal</a>
        </nav>

        <!-- Bootstrap card for the main content -->
        <div class="card mt-4">
            <div class="card-header">
                <h3 class="card-title">Add Job</h3>
            </div>
            <div class="card-body">
                <!-- Your existing form -->
                <form:form action="${pageContext.request.contextPath}/candidate/applyJob" method="post"
                    modelAttribute="candidate" class="my-4" id="jobApplicationForm">
					<form:hidden path="job.jobCode" />
                    <!-- ... (Your existing form fields) -->
					<div class="form-group row">
     					<label for="job.jobProfile" class="col-md-2 col-form-label">Job Profile:</label>
    						<div class="col-md-6">
        						<form:input path="job.jobProfile" class="form-control" readonly="true"/>
    						</div>
					</div>
					<div class="form-group row">
     					<label for="job.jobProfile" class="col-md-2 col-form-label">Available Seats:</label>
    						<div class="col-md-6">
        						<form:input path="job.availableSeats" class="form-control" readonly="true"/>
    						</div>
					</div>
					<div class="form-group row">
     					<label for="job.jobProfile" class="col-md-2 col-form-label">Experience(Yrs):</label>
    						<div class="col-md-6">
        						<form:input path="job.experience" class="form-control" readonly="true"/>
    						</div>
					</div>
					<div class="form-group row">
     					<label for="job.jobProfile" class="col-md-2 col-form-label">Salary(LPA):</label>
    						<div class="col-md-6">
        						<form:input path="job.salary" class="form-control" readonly="true"/>
    						</div>
					</div>
					<div class="form-group row">
     					<label for="job.jobProfile" class="col-md-2 col-form-label">Company:</label>
    						<div class="col-md-6">
        						<form:input path="job.company" class="form-control" readonly="true"/>
    						</div>
					</div>
                    <div class="form-group row">
                        <div class="col-sm-10 offset-sm-2">
                            <!-- Apply button with Bootstrap styling -->
                            <button type="button" class="btn btn-primary apply-btn">Apply</button>
                        </div>
                    </div>

                    <!-- Additional fields with Bootstrap form-group and row -->
                    <div class="form-group row additional-fields">
                        <label for="cname" class="col-md-2 col-form-label">Candidate Name</label>
                        <div class="col-md-6">
                            <form:input path="cname" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group row additional-fields">
                        <label for="experiance" class="col-md-2 col-form-label">Experience(Yrs)</label>
                        <div class="col-md-6">
                            <form:input path="experiance" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group row additional-fields">
                        <label for="expSalary" class="col-md-2 col-form-label">Expected Salary(LPA)</label>
                        <div class="col-md-6">
                            <form:input path="expSalary" class="form-control" />
                        </div>
                    </div>

                    <!-- ... (Other additional fields) -->

                    <div class="form-group row additional-fields">
                        <div class="col-md-6 offset-md-2">
                            <!-- Save button with Bootstrap styling -->
                            <input type="submit" value="Save" class="btn btn-success save" />
                        </div>
                    </div>
                </form:form>
            </div>
        </div>

        <!-- Bootstrap back-to-list link -->
        <div class="mt-3">
            <p>
                <a href='${pageContext.request.contextPath}/candidate/listCandidate' class="btn btn-secondary">Back to
                    List</a>
            </p>
        </div>
    </div>

    <!-- Bootstrap and jQuery scripts (make sure to include jQuery before Bootstrap JS) -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- Your custom script -->
<script>
    $(document).ready(function () {
        $('.additional-fields').hide();

        $('.apply-btn').click(function (e) {
            e.preventDefault();
            $(this).prop('disabled', true);
            $('.additional-fields').show();
        });

        $('.save').click(function (e) {
            e.preventDefault();

            // Display a Bootstrap modal as a confirmation dialog
            $('#confirmationModal').modal('show');

            // Handle the modal's confirm button click
            $('#confirmModalBtn').click(function () {
                $('#jobApplicationForm').submit();
            });

            // Handle the modal's cancel button click
            $('#cancelModalBtn').click(function () {
                $('.apply-btn').prop('disabled', false);
                $('#confirmationModal').modal('hide');
            });
        });
    });
</script>

<!-- Bootstrap modal for confirmation -->
<div class="modal fade" id="confirmationModal" tabindex="-1" role="dialog" aria-labelledby="confirmationModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="confirmationModalLabel">Confirmation</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Please check the details once again.Once Details submitted you cannot edit application. Are you sure!! you want to Submit?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="cancelModalBtn" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary" id="confirmModalBtn">OK</button>
            </div>
        </div>
    </div>
</div>



</body>

</html>
