<%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.PreparedStatement"%>
        <%@page import="com.ravi.databseUtil.DataBaseUtil"%>
            <%@page import="java.sql.Connection"%>
                <%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
                    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
                    <html>

                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
                        <title>Insert title here</title>
                    </head>

                    <body>
                        <h1 style="text-align: center;color: green">${response }<br> ${tables}</h1>
                        <div align="center" style="background-color: lightgray">
                            <h1 style="text-align: center;color: blue">Host allocating Table For Customers</h1>
                            <form action="hostallocation" method="post">
                                Customer Name:
                                <%
		Connection con = DataBaseUtil.getConnection();
		if (con != null) {
			PreparedStatement ps = con.prepareStatement("SELECT CUSTOMERNAME FROM USERREG");
			ResultSet rs = ps.executeQuery();
	%><select name="cname">
	
			<%
				while (rs.next()) {
			%>

			<option value=<%out.println(rs.getString(1));%>>
				<%
					out.println(rs.getString(1));
				%>
			</option>
			<%
				}
			%>


		</select>
                                    <br>
                                    <%
			}
		%>
                                        No. of Tables<input type="text" name="no">
                                        <br> <input type="submit" value="submit"><input type="reset" value="Cancel">


                            </form>
                        </div>
                    </body>

                    </html>