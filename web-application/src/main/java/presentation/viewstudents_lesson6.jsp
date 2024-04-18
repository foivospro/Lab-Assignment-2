<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="lesson6.*,java.util.List,java.util.ArrayList" %>
<%@ page errorPage="appError.jsp" %>

<%@ include file="authentication_guard_lesson6.jsp" %>

<%
// getting keyword from request
String keyword = request.getParameter("keyword");

List<Student> students = new ArrayList<Student>();
StudentService service = new StudentService();

if (keyword == null || keyword.length() == 0) {
  students = service.getStudents();
} else {
  students = service.searchStudents(keyword);
}

%>


<!DOCTYPE html>
<html>
    <head>
        <%@ include file="header_lesson6.jsp" %>

      <meta name="description" content="Lesson6 - example">
      <meta name="author" content="sofos@aueb.gr">
      <title>Lesson6 - viewstudents page</title>
    </head>
    <body>

		<%@ include file="navbar_lesson6.jsp" %>

      <div class="container">
        <div class="page-header">
			<h1>View Students page</h1>
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

    <%
	if (request.getAttribute("successMessage") != null) {	
%>				
			<div class="row">
				<div class="col-xs-12">

					<div class="alert alert-success">
						<%=(String)request.getAttribute("successMessage") %>
					</div>

				</div>
			</div>
<%
	}			
%>

        <div class="row">

            <div class="col-xs-12 text-right" style="padding-bottom: 20px;">

              <a href="addstudent_lesson6.jsp" class="btn btn-primary btn-lg">
                <span class="glyphicon glyphicon-plus"></span> Add Student
              </a> 

            </div>

            <div class="col-xs-12" style="padding-bottom: 20px;">

              <form action="viewstudents_lesson6.jsp" method="get" class="form-horizontal">
                <div class="form-group form-group-lg">                  
                  <div class="col-md-6">
                    <input class="form-control input-lg"
                     name="keyword"
                      id="search" type="text" placeholder="Search students" 
                      value="<%= (keyword != null && keyword.length() > 0 ? keyword : "")  %>">
                    <span style="margin-bottom: 5px;" id="search" class="help-block">
                      Search for specific student(s) or students who belong to a specific department
                    </span>
                  </div>
                  <div class="col-md-4">
                    <button type="submit" class="btn btn-success btn-lg" style="margin-bottom: 5px;" >
                      <span class="glyphicon glyphicon-search"></span> Search
                    </button> 
                    <a href="viewstudents_lesson6.jsp" class="btn btn-default btn-lg" style="margin-bottom: 5px;" >
                      <span class="glyphicon glyphicon-remove"></span> Cancel
                    </a> 
                  </div>
                </div>
                
              </form>

            </div>
            

            <div class="col-xs-12">

               <div class="table-responsive">

                  <table class="table table-bordered table-hover table-condensed">

                    <tr class="info">
                      <th>A/A</th>
                      <th>Αρ. Μητρώου</th>
                      <th>Όνομα</th>
                      <th>Επώνυμο</th>
                      <th>Email</th>
                      <th>Τμήμα</th>
                      <th class="text-center" style="width: 120px;">Επιλογές</th>
                    </tr>
<%
int counter = 0;
for (Student student: students) {
  counter++;
%>  
                    <tr>
                      <td><%=counter %></td>
                      <td><%=student.getAm() %></td>
                      <td><%=student.getName() %></td>
                      <td><%=student.getSurname() %></td>
                      <td><%=student.getEmail() %></td>
                      <td><%=student.getDepartment().getName() %></td>
                      <td class="text-center">
                        <a href="editstudent_lesson6.jsp?am=<%=student.getAm() %>"
                         class="btn btn-warning btn-xs">
                          <span class="glyphicon glyphicon-pencil"></span>
                        </a>                        
                         <button type="button" class="btn btn-danger btn-xs" aria-expanded="false" aria-controls="confirmDeleteModal_<%=student.getAm() %>"
                            data-toggle="collapse" data-target="#confirmDeleteModal_<%=student.getAm() %>">
                          <span class="glyphicon glyphicon-trash"></span>
                        </button>
                        <div id="confirmDeleteModal_<%=student.getAm() %>" class="collapse">
                          Διαγραφή;<br>
                          <a href="deletestudent_lesson6.jsp?am=<%=student.getAm() %>"
                             class="btn btn-link"  data-toggle="tooltip" data-placement="top" title="Διαγραφή">Ναι</a>
                        </div>                      
                      </td>
                    </tr>
<%
}

if (students.size() == 0) {
%>
                    <tr>
                      <td colspan="7" class="text-center">Δεν βρέθηκαν φοιτητές</td>
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




