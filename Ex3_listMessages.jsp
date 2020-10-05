<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Messages</title>
</head>
<body>
	<ul>
		<%
			ArrayList<String> Messages = (ArrayList<String>) session.getAttribute("Messages");
		for(String msg: Messages) {
			out.print("<li>"+ msg +"</li>");
		}
		%>
	</ul>
</body>
</html>