<%--
  Created by IntelliJ IDEA.
  User: sashank
  Date: 5/6/18
  Time: 6:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="sidebar-wrapper">
    <ul class="sidebar-nav">
            <li>
                <a href="user?page=home">Dashboard</a>
            </li>
            <li>
                <a href="user?page=listUser">Users</a>
            </li>

            <%--<li>--%>
                <%--<a href="#">Tasks</a>--%>
            <%--</li>--%>
            <li>
                <a href="user?page=logout">Logout</a>
            </li>
        <%-- <li><a href="memberList?page=list">Member</a></li>--%>
    </ul>
</div>
