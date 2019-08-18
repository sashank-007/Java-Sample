<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sample</title>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //Custom Theme files -->
    <!-- web font -->
    <script src="//fonts.googleapis.com/css?family=Old+Standard+TT:400,400i,700"></script>
    <script src="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800"></script><!--web font-->
    <!-- //web font -->

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<div class="main main-agileits">
    <div class="main-agilerow">
        <div class="signup-wthreetop">
        <h2>Welcome to Registration</h2>
        <div class="contact-wthree">
            <form action="user?page=register" method="post">
                <h3>Step 1 :</h3>
                <div class="form-w3step1">
                    <input type="text" name="full_name" id="fname" placeholder="Enter your full name">
                    <input type="text" name="role" id="role" placeholder="Enter your role">
                </div>
                <h3>Step 2 :</h3>
                <div class="form-w3step1 w3ls-formrow">
                    <input type="text" name="username" id="username" placeholder="Enter a username">
                    <input type="password" name="password" id="password" placeholder="Enter a password">
                </div>
                <div class="form-w3step1">
                    <input type="submit" value="SUBMIT">
                    <input type="reset" value="RESET">
                </div>
                <div class="agileits-row2 w3ls-formrow2">
                    <a href="user?page=index"><label>Already have an account? Log In.</label></a>
                </div>
            </form>
         </div>
        </div>
    </div>
</div>
<!-- /#wrapper -->


<!-- Bootstrap core JavaScript -->
<script src="../vendor/jquery/jquery.min.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Menu Toggle Script -->
<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
</script>
</body>
</html>
