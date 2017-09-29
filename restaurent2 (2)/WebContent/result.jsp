<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page isELIgnored="false" language="java" import="java.util.*"
	pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>Success Page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
	
		<h2 align="center" style="color: red">


<table border="2px" align="center">
			Customer Delivery Order Details : <br>

			<tr>
				<th>Se.no</th>
				<th>Item_name</th>
				<th>Cost</th>
				<th>Payment Mode</th>
			</tr>


			<tr>
				<td>${cdata.sno}</td>
				<td><c:out value="${cdata.items_name}" /></td>
				<td><c:out value="${cdata.cost}" /></td>
				<td><a href="Payment.jsp">Payment</a></td>

			</tr>
	</table>

	</h2>


</body>
</html>
