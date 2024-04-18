<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="lesson6.*" %>
<%@ page errorPage="appError.jsp" %>


<!DOCTYPE html>
<html>
    <head>
        <%@ include file="header_lesson6.jsp" %>

		<meta name="description" content="Lesson6 - example">
		<meta name="author" content="sofos@aueb.gr">
		<title>Lesson6 - Info page</title>
    </head>
    <body>      

      <div class="container">
        <div class="page-header">
			<h1>Info page</h1>
		</div>

        <div class="row">

            <div class="col-xs-12">
<%
	User user = (User)session.getAttribute("authenticatedUserLesson6");

  if (user != null) {
%>
			<h2>You see this page as <span class="text-success"><strong><%=user.getUsername() %></strong></span></h2> 
      <ul class="list-unstyled">
        <li><b>Firt name: </b> <%=user.getFirstname() %></li>
        <li><b>Last name: </b> <%=user.getLastname() %></li>
        <li><b>email: </b> <%=user.getEmail() %></li>
        <li><b>username: </b> <%=user.getUsername() %></li>
      </ul>
<%
  } else {
%>
      <h2>You see this page as <span class="text-info"><strong>Guest</strong></span></h2>
<%
  }
%>

            </div>

        </div>        

      </div><!-- /.container -->

	  <%@ include file="footer_lesson6.jsp" %>
  </body>
</html>



