<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Studnet Registration </title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String cpf = request.getParameter("cpf"); 
	String telephone = request.getParameter("telephone");
%>
	<h1>Data Student</h1>
	<h4>Name: <%=name%></h3>
	<h4>Address: <%=Address%></h3>
	<h4>CPF: <%=cpf%></h3>
	<h4>Telephone: <%=telephone%></h3>
	
	<h2>[select classes]:</h2>
	<form action="confirmRegistration.jsp" method="post">
		<input type="checkbox" id="classOne" name="selected" value="mathematics">
		<label for="vehicle1"> Mathematics</label><br>
		<input type="checkbox" id="classTwo" name="selected" value="geography">
		<label for="vehicle1"> Geography</label><br>
		<input type="checkbox" id="classThree" name="selected" value="philosophy">
		<label for="vehicle1"> Philosophy</label><br>
		
		<input type="hidden" name="name" value="<%=name%>">
		<input type="hidden" name="addres" value="<%=address%>">
		<input type="hidden" name="cpf" value="<%=cpf%>">
		<input type="hidden" name="telephonr" value="<%=telephone%>">

		<button type="submit">Finished</button>
	</form>

</body>
</html>