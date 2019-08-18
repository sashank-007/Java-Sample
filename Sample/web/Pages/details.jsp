<%--
  Created by IntelliJ IDEA.
  User: sashank
  Date: 5/8/18
  Time: 10:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Saadhan</title>
    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <script src="../css/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="../css/navbar.css">
    <!-- Custom styles for this template -->
    <link href="../css/simple-sidebar.css" rel="stylesheet">
    <link href="../css/style1.css" rel="stylesheet">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

</head>

<body>
<div id="wrapper">
    <%@include file="../includes/navbar.jsp"%>
    <!-- Sidebar -->
    <%@include file="../includes/admin_sidebar.jsp"%>

    <div class="container">
        <div class="table-responsive">
            <table class="table">
                <tr>
                    <th>Service Id</th>
                    <td>${service.id}</td>
                </tr>
                <tr>
                    <th>Customer Id</th>
                    <td>${service.customer_id}</td>
                </tr>
                <tr>
                    <th>First Name</th>
                    <td>${service.first_name}</td>
                </tr>
                <tr>
                    <th>Last Name</th>
                    <td>${service.last_name}</td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td>${service.address}</td>
                </tr>
                <tr>
                    <th>Contact</th>
                    <td>${service.contact}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>${service.email}</td>
                </tr>
                <tr>
                    <th>Vehicle Model</th>
                    <td>${service.vehicle_model}</td>
                </tr>
                <tr>
                    <th>Registration No</th>
                    <td>${service.registration_no}</td>

                </tr>
                <tr>
                    <th>Service Type</th>
                    <td>${service.service_type}</td>
                </tr>
                <tr>
                    <th>Service Date</th>
                    <td>${service.service_date}</td>
                </tr>
                <tr>
                    <th>Mechanic Name</th>
                    <td>${service.mechanic_name}</td>
                </tr>
                <tr>
                    <td><a href="admin?page=serviceEdit&id=${service.id}">Edit</a></td>
                    <td><a href="admin?page=deleteService&id=${service.id}">Delete</a></td>
                </tr>
            </table>
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
