<%--
  Created by IntelliJ IDEA.
  User: sashank
  Date: 3/6/18
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>
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
      <h2><center>Sample</center></h2>
      <h5><center>${msg}</center></h5>
    </div>
    <div class="contact-wthree">
      <form action="user" method="post">
        <input type="hidden" name="page" value="login">
        <div class="form-w3step1">
          <input type="text" name="username" placeholder="Enter your username">
          <input type="password" name="password" placeholder="Enter your password">
          <input type="submit" value="LOGIN">
        </div>
        <div class="agileits-row2 w3ls-formrow2">
          <label><a href="user?page=newUser"><span></span>Not a member yet? Register yourself.</a></label>
        </div>

      </form>
    </div>
  </div>
</div>
</body>
</html>
