<%--
  Created by IntelliJ IDEA.
  User: sashank
  Date: 5/8/18
  Time: 11:44 AM
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
                    <th>Id</th>
                    <td>${service.id}</td>
                </tr>
                <tr>
                    <th>Service Date</th>
                    <td>${service.date}</td>
                </tr>
                <tr>
                    <th>Service Time</th>
                    <td>${service.time}</td>
                </tr>
                <tr>
                    <th>Status</th>
                    <td>${service.status}</td>
                </tr>
                <tr>
                    <td><a href="admin?page=serviceDetailsEdit&id=${service.id}">Edit</a></td>
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
