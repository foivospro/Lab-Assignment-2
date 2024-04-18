<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="appError.jsp" %>

<!-- Fixed navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span> <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="dashboard_lesson6.jsp">Lesson6</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">						
                <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("dashboard_lesson6.jsp") ? "active" : ""  %>">
                    <a href="dashboard_lesson6.jsp">Dashboard</a>
                </li>
                <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("viewstudents_lesson6.jsp") || request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("students") ? "active" : ""  %>">
                    <a href="viewstudents_lesson6.jsp">Students</a>
                </li>
                <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("viewdepartments_lesson6.jsp") ? "active" : ""  %>">
                    <a href="viewdepartments_lesson6.jsp">Departments</a>
                </li>                
            </ul>	
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="logout_lesson6.jsp">
                        <span class="glyphicon glyphicon-log-out"></span> Log out
                    </a>	
                </li>
            </ul>	
        </div>
        <!--/.nav-collapse -->
    </div>
</nav>

