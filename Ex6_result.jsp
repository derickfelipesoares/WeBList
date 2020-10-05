<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
</head>
<body>
	<%String name = request.getParameter("name");
	  float n1 = Float.parseFloat(request.getParameter("noteOne"));
	  float n2 = Float.parseFloat(request.getParameter("noteTwo"));
	  float ave = (n1 + n2) / 2;
	  
	  if (ave < 7){
		  out.print("<h1>You Pass!</h1>");
	  }
	  else {
		  out.print("<h1>You Failed!</h1>");
	  }
	%>
	<h3>Student: <%=name%></h3>
	<h3>Average: <%=ave%></h3>
</body>
</html>