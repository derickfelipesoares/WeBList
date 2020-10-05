<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.format.DateTimeFormatter, java.time.LocalDate, java.time.Period" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	DateTimeFormatter bth = DateTimeFormatter.ofPattern("yyyy-MM-dd");  
	LocalDate datebth = LocalDate.parse(birth, bth);
	
	LocalDate now = LocalDate.now();
	
	Period diff = Period.between(datebth, now);
	int age = diff.getYears();
	
	request.setAttribute("age", age);
	request.setAttribute("name", name);
	pageContext.forward("result.jsp");
%>
</body>
</html>