<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="lesson6.*" %>
<%@ page errorPage="appError.jsp" %>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");

UserService uService = new UserService();

try {

    User user = uService.authenticate(username, password);

    session.setAttribute("authenticatedUserLesson6", user);


%>    
    <jsp:forward page="dashboard_lesson6.jsp" />
<%
} catch(Exception e) {

    request.setAttribute("error_message", e.getMessage());

%>
    <jsp:forward page="login_lesson6.jsp" />

<%
}
%>

