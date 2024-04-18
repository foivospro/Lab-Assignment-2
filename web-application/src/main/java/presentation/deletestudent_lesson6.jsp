<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="lesson6.*,java.util.List" %>
<%@ page errorPage="appError.jsp" %>

<%@ include file="authentication_guard_lesson6.jsp" %>

<%

String am = request.getParameter("am");


StudentService sService = new StudentService();
sService.deleteStudent(am);
request.setAttribute("successMessage", "Student with am: " + am + " deleted successfully!");
    
%>
<jsp:forward page="viewstudents_lesson6.jsp"/>

