<%@page import="com.ravi.dto.OrdersDTO"%>
    <%@page import="java.util.List"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
            <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
                <div align="center">
                    <h1 align="center">Server Data</h1>
                    <table border="2" style="color: blue">
                        <tr>
                            <th>Table.no</th>
                            <th>ItemName</th>


                            <%
				session = request.getSession(false);

				List<OrdersDTO> dto = (List<OrdersDTO>) session.getAttribute("data");
				System.out.println(dto);
				for (int i = 0; i < dto.size()-1; i++) {
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
				out.println(dto2.getItems_name());
				%>
                                    </td>
                                </tr>
                                <%
			}
			}
		%>
                    </table>
                    <div align="center">
                        <h2>
                            <a href="Payment.jsp">Payment</a>
                        </h2>
                    </div>

                </div>