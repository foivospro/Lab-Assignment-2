<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="appError.jsp" %>

<%
if (session.getAttribute("authenticatedUserLesson6") == null) {

    request.setAttribute("error_message", "You are not authorized to view this page!");

%>
    <jsp:forward page="login_lesson6.jsp" />

<%
    return;
}    
%>