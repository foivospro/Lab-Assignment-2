<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="appError.jsp" %>
<%@ page import="lesson6.*" %>

<%
/*
* Getting parameters from request.
*/
String am = request.getParameter("student_am");
String name = request.getParameter("student_name");
String surname = request.getParameter("student_surname");
String email = request.getParameter("student_email");
String department = request.getParameter("student_department");

/*
 * If page is called directly (from url) and not via form_lesson3.jsp then all parameters will be null.
 * (In that case appError.jsp will respond)
 */
if ( name == null && surname == null && am == null && email == null && department == null ) {

    throw new Exception("No parameters specified, please visit <a href='editstudent_lesson6.jsp'>registration form</a>");

}

// convert (name and surname) to UTF-8 to support Greek characters input
if (name != null) {
    name = new String(name.getBytes("ISO-8859-1"), "UTF-8");
}

if (surname != null) {
    surname = new String(surname.getBytes("ISO-8859-1"), "UTF-8");
}

int countErrors = 0;

if (am == null || am.length() != 7) {
    countErrors++;
} 

if (name == null || name.length() < 3) {
    countErrors++;
}

if (surname == null || surname.length() < 3) {
    countErrors++;
}

/*
* Validating email address
* Reference: https://stackoverflow.com/questions/624581/what-is-the-best-java-email-address-validation-method
*/
String ePattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
java.util.regex.Matcher m = p.matcher(email);

if( !m.matches() ) {				
    countErrors++;
}

if (department == null || department.equals("")) {
    countErrors++;
}
    
/*
* If there is an error in form data, then add an attribute (with name errorMessage) to request and forward to form_lesson3.jsp.
*/
if (countErrors > 0) {
    request.setAttribute("errorMessage", "Form has " + (countErrors == 1 ? "1 error!" : countErrors + " errors!"));
%>
    <jsp:forward page="editstudent_lesson6.jsp"/>
<%
    return;
} 

/*
* Create Student object from user's input (form data), add Student object to request via attribute (with name student_obj)
* and finally forward thw request to registration_finished_lesson3.jsp.
*/

DepartmentService depService = new DepartmentService();
Department dep = depService.getDepartmentByID(Integer.parseInt(department));
Student student = new Student(am, name, surname, email, dep);

StudentService sService = new StudentService();

sService.updateStudent(student);
request.setAttribute("successMessage", "Student with am: " + student.getAm() + " updated successfully!");
%>
<jsp:forward page="viewstudents_lesson6.jsp"/>




    