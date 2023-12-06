<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Application Sent</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <!-- Your custom styles -->
    <style>
        body {
            background-color: #f8f9fa; /* Bootstrap default background color */
        }

        .container {
            margin-top: 100px;
            text-align: center;
        }

        .success-message {
            color: #28a745; /* Bootstrap success color */
            font-size: 36px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .redirect-info {
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="success-message">Application Sent!</div>
        <p class="redirect-info">You will be redirected to the candidate list in <span id="countdown">5</span> seconds.</p>
        <div class="spinner-border text-success" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>

    <!-- Bootstrap and jQuery scripts (make sure to include jQuery before Bootstrap JS) -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script>
        // Countdown timer
        var countdown = 5;
        var countdownElement = document.getElementById('countdown');

        function updateCountdown() {
            countdown--;
            countdownElement.textContent = countdown;

            if (countdown <= 0) {
                window.location.href = '${pageContext.request.contextPath}/candidate/listCandidate';
            } else {
                setTimeout(updateCountdown, 1000); // Update every second
            }
        }

        // Initial call to start the countdown
        setTimeout(updateCountdown, 1000);
    </script>
</body>
</html>
