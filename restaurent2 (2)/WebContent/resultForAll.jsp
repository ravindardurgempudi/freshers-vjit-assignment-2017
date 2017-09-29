<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body <div class="bg"></div> >



   <%
   
 
 %>
<div align="center">

<h1 align="center">Manager</h1>
	<table border="2" style="color: blue">
		<tr>
			<th>S.no</th>
			<th>ItemName</th>
			<th>Cost</th>
			
		
			
		</tr>
		<c:forEach var="list" items="${cdata}">

			<tr>
				<td>${list.sno}</td>

				<td><c:out value="${list.items_name}" /></td>
				<td><c:out value="${list.cost}" /></td>
				
				
			</tr>
		</c:forEach>
		<tr>
		<td></td><td><b>&nbsp;&nbsp;Total Bill Amount:</b></td>
		<td><b>${cost}</b></td></tr>
	</table>
	
</div>
<%

  


%>
<%-- <div align="center">
<h1 align="center">Chieff</h1>
	<table border="2" style="color: blue">
		<tr>
			<th>S.no</th>
			<th>ItemName</th>
		
			
		
			
		</tr>
		<c:forEach var="list" items="${cdata}">

			<tr>
				<td>${list.sno}</td>

				<td><c:out value="${list.items_name}" /></td>
				</tr>
		</c:forEach>
		
	</table>
	
</div>
<%
%><div align="center">
<h1 align="center">Server</h1>
	<table border="2" style="color: blue">
		<tr>
			<th>TableNO</th>
			<th>ItemName</th>
		
			
		
			
		</tr>
		<c:forEach var="list" items="${cdata}">

			<tr>
				<td>${list.sno}</td>

				<td><c:out value="${list.items_name}" /></td>
				</tr>
		</c:forEach>
		
	</table>
	<a href="Payment.jsp">Bill Payment</a>
</div>
<% %> --%>
<h2 align="center">

<a href="cheff.jsp">Cheff</a>
</h2>
<h2 align="center">
	<a href="veg.html">Back To Menu</a>
</h2>
</body>
</html>