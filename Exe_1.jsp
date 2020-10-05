<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.time.format.DateTimeFormatter, java.time.LocalDateTime" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Date </title>
</head>
<body>
	<h1>Data Brazil and "American"</h1>
	<%
	DateTimeFormatter brazil = DateTimeFormatter.ofPattern("yyyy/MM/dd");  
	LocalDateTime now_brazil = LocalDateTime.now();  
	%>
	<h4>Date in American format: <%=brazil.format(now_brazil) %></h4>
	<%
	DateTimeFormatter usa = DateTimeFormatter.ofPattern("dd/MM/yyyy");  
	LocalDateTime now_usa = LocalDateTime.now();  
	%>
	<h4>Date in Brazilian Format: <%=usa.format(now_usa) %></h4>
</body>
</html>