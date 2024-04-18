<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="lesson6.*" %>
<%@ page errorPage="appError.jsp" %>

<%@ include file="authentication_guard_lesson6.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <%@ include file="header_lesson6.jsp" %>

		<meta name="description" content="Lesson5 - example">
		<meta name="author" content="sofos@aueb.gr">
		<title>Lesson6 - dashboard page</title>
    </head>
    <body>

        <%@ include file="navbar_lesson6.jsp" %>

      <div class="container">
        <div class="page-header">
			<h1>Dashboard page</h1>
		</div>

        <div class="row">

            <div class="col-xs-12">
<%
	User user = (User)session.getAttribute("authenticatedUserLesson6");
%>
			<h2>Welcome <span class="text-success"><%=user.getFirstname() %> <%=user.getLastname() %></span></h2> 
              

            </div>

        </div>        

      </div><!-- /.container -->

	  <%@ include file="footer_lesson6.jsp" %>
  </body>
</html>



