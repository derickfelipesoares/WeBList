<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Temperature</title>
</head>
<body>
	<table border="3">
      <tr>
        <th>[Celsius]</th>
        <th>[Fahrenheit]</th>
      </tr>
      <%for(int i = 40; i <= 100; i += 10) {%>
      <tr>
        <td><%=i%></td>
        <td><%=(i * 1.8) + 32 %></td>
      </tr>
      <%} %>
    </table>
</body>
</html>