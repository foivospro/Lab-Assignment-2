<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="lesson6.*,java.util.List" %>
<%@ page errorPage="appError.jsp" %>

<%@ include file="authentication_guard_lesson6.jsp" %>

<%
DepartmentService depService = new DepartmentService();
List<Department> departments = depService.getDepartments();

%>

<!DOCTYPE html>
<html lang="en">
	<head>
		
		<%@ include file="header_lesson6.jsp" %>

		<meta name="description" content="Lesson5 - example">
		<meta name="author" content="sofos@aueb.gr">
		<title>Lesson6 - addstudent</title>

		<!-- Adding some custom style to page -->
		<style type="text/css">
			form { max-width: 600px; }
			.main-label { font-size: 16px; }
		</style>
	
	</head>
	
	<body>

		<%@ include file="navbar_lesson6.jsp" %>

		<div class="container theme-showcase" role="main">

			<!-- Page Title -->
			<div class="page-header">
				<h1>Add New Student</h1>
            </div>

<%
	if (request.getAttribute("errorMessage") != null) {	
%>				
			<div class="row">
				<div class="col-xs-12">

					<div class="alert alert-danger">
						<%=(String)request.getAttribute("errorMessage") %>
					</div>

				</div>
			</div>
<%
	}			
%>
            
            <div class="row">
                    
                <div class="col-xs-12">

                    <form class="form-horizontal" method="POST" action="register_student_lesson6.jsp">
                    
                        <div class="form-group">
                            <label for="am" class="col-sm-3 control-label main-label">Reg. Number: </label>
                            <div class="col-sm-9">
                            <input type="text" class="form-control" name="student_am" id="am" placeholder="your registration number">
                            </div>
                        </div>
                                            
                        <div class="form-group">
                            <label for="name" class="col-sm-3 control-label main-label">First name: </label>
                            <div class="col-sm-9">
                            <input type="text" class="form-control" name="student_name" id="name" placeholder="your first name">
                            </div>
                        </div>
                    
                        <div class="form-group">
                            <label for="surname" class="col-sm-3 control-label main-label">Last name: </label>
                            <div class="col-sm-9">
                            <input type="text" class="form-control" name="student_surname" id="surname" placeholder="your last name">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="email" class="col-sm-3 control-label main-label">Email: </label>
                            <div class="col-sm-9">
                            <input type="email" class="form-control" name="student_email" id="email" placeholder="your email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="department" class="col-sm-3 control-label main-label">Department: </label>
                            <div class="col-sm-9">
                                <select id="department" name="student_department" class="form-control">
                                    <option value="">--- Please choose Department ---</option>
<%
            for (Department dep: departments) {
%>
                                    <option value="<%=dep.getId() %>"><%=dep.getName() %></option>
<%
            }
%>                                        
                                </select>
                            </div>
                        </div>
                                            
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span> Submit</button> 
                            <button type="reset" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                            </div>
                        </div>					

                    </form>


                </div>

            </div>
			
		</div>
		<!-- /container -->

		
		<%@ include file="footer_lesson6.jsp" %>
	</body>
</html>