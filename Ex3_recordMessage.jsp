<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Record Message</title>
</head>
<body>
<%
String email = request.getParameter("email");	
String msg = request.getParameter("msg");
ArrayList<String> messages = (ArrayList<String>) session.getAttribute("messages");
	
if (messages == null) {
	messages = new ArrayList<String>();
	messages.add(msg);
	session.setAttribute("messages", messages);
} else {
    messages.add(msg);
	}
	if (email.isEmpty()) {
		pageContext.forward("newMessage.jsp");
	} else {
		pageContext.forward("listMessages.jsp");	
	}
    %>
</body>
</html>