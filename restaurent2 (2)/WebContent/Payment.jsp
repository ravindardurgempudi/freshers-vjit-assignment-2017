<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<h1 align="center" style="color: orange">
         Restarunt Management System</h1>
          <marquee loop="0" direction="center" behavior="slide"><h2  style="color: Green">Welcome To Our Restaurant </h2></marquee>


<body>
	<form action="pay.jsp" method="post">
		<div align="center">
		<%
		session = request.getSession(false);
		double cost=(double)session.getAttribute("cost");
		
		%>
			<h3>Enter Card Details <br>
			Card No: <input type="text" name="cardno" required><br>
			Amount<input type="text" name="cardno"  value=<%out.println(cost); %> required><br>
			<input type="submit" value="PayBill">
			</h3>
		</div>
	</form>
</body>
</html>