<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="lesson6.*,java.util.List" %>
<%@ page errorPage="appError.jsp" %>

<%@ include file="authentication_guard_lesson6.jsp" %>

<%

DepartmentService departmentService = new DepartmentService();

List<Department> departments = departmentService.getDepartments();

%>

<!DOCTYPE html>
<html>
    <head>
        <%@ include file="header_lesson6.jsp" %>

		<meta name="description" content="Lesson6 - example">
		<meta name="author" content="sofos@aueb.gr">
		<title>Lesson6 - viewdepartments page</title>
    </head>
    <body>

        <%@ include file="navbar_lesson6.jsp" %>

      <div class="container">
        <div class="page-header">
			<h1>View Departments page</h1>
		</div>

        <div class="row">

            <div class="col-xs-12">

				<div class="table-responsive">

					<table class="table table-bordered table-condensed table-hover">
						<tr class="info">
							<th>ID</th>
							<th>Name</th>
						</tr>
<%
					for (Department department: departments) {
%>
						<tr>
							<td><%=department.getId() %></td>
							<td><%=department.getName() %></td>
						</tr>	
<%
					}
%>					

					</table>
				</div>

            </div>

        </div>        

      </div><!-- /.container -->

	  <%@ include file="footer_lesson6.jsp" %>
  </body>
</html>



