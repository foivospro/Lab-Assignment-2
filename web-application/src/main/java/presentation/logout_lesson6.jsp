<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="appError.jsp" %>

<%
session.invalidate();
request.setAttribute("success_message", "Logged out successfully!");
%>
<jsp:forward page="login_lesson6.jsp" />

