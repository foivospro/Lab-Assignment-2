<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
    <head>
        <%@ include file="header_lesson6.jsp" %>

		<meta name="description" content="Lesson4 - example">
		<meta name="author" content="sofos@aueb.gr">
		<title>Lesson6 - appError page</title>
    </head>
    <body>

        <%@ include file="navbar_lesson6.jsp" %>

      <div class="container">
        <div class="page-header">
			<h1>Oops something went wrong</h1>
		</div>

        <div class="row">

            <div class="col-xs-12">

                <h2>Description</h2>

                <% if(exception != null) { %>	                  	
                    <p><code><%=exception %></code></p>						
                <% } %>		

            </div>

        </div>        

      </div><!-- /.container -->

      <%@ include file="footer_lesson6.jsp" %>	
  </body>
</html>



