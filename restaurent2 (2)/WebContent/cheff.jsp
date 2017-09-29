<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@page import="com.ravi.dto.OrdersDTO"%>
        <%@page import="com.ravi.databseUtil.DataBaseUtil"%>
            <%@page import="java.sql.Connection"%>
                <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
                    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.*" pageEncoding="ISO-8859-1" isELIgnored="false"%>
                        <div align="center">
                            <h1 align="center">Cheff Data</h1>
                            <table border="2" style="color: blue">
                                <tr>
                                    <th>Table.no</th>
                                    <th>ItemName</th>


                                    <%
				session = request.getSession(false);

				List<OrdersDTO> dto = (List<OrdersDTO>) session.getAttribute("data");
				System.out.println(dto);
				System.out.println("DSDDDDDDD"+dto.size());				
				for (int i = 1; i < dto.size(); i++) {
					for (OrdersDTO dto2 : dto) {
			%>

                                        <tr>
                                            <td>
                                                <%
					out.println(dto2.getSno());
				%>
                                            </td>

                                            <td>
                                                <%
					out.println(dto2.getItems_name());	}
				%>
                                            </td>
                                        </tr>
                                        <%
		
			}
		%>

                                            <%-- </tr>
	

				<tr>
				<td>${list.sno}</td>

				<td><c:out value="${list.items_name}" /></td>
				<td><c:out value="${list.cost}" /></td>


			</tr>
		
		<tr>
			<td></td>
			<td><b>&nbsp;&nbsp;Total Bill Amount:</b></td>
			<td><b>${cost}</b></td>
		</tr> --%>
                            </table>

                        </div>
                        <div align="center">
                            <h2>
                                <a href="server.jsp">Server</a>
                            </h2>
                        </div>