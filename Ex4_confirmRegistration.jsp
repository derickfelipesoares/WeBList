<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmação de matrícula</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String cpf = request.getParameter("cpf"); 
	String telephone = request.getParameter("telephone");
	String[] arr = request.getParameterValues("selected");
%>
	<h1>Data</h1>
	<h4>Name: <%=name%></h4>
	<h4>Address: <%=address%></h4>
	<h4>CPF: <%=cpf%></h4>
	<h4>Telephone: <%=telephone%></h4>
	
	<h1>Class:</h1>
	<%
	if (arr != null) {
		for(int i = 0; i < arr.length; i++) {
			out.print("<h4>"+ arr[i] +"</h4>");
		}
	} else {
		out.print("<h2>no classes selected</h2>");
	}
	%>
</body>
</html>