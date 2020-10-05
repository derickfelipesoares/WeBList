<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Message</title>
</head>
<body>
<form action="recordMessage.jsp" method="post">
	Email: <input type="text" name="email"><br/>
	<textarea name="msg" rows="8" cols="42" placeholder="[Type Message.]:"></textarea><br/>
	<button type="submit">Submit</button>
</form>
</body>
</html>