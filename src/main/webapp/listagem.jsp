<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="ligarbd.*" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listagem de Reservas</title>
<link rel="icon" href="imagens/faviconrest.jpg">
<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<h1>Listagem de Reservas</h1>
	<hr>
	<div align="center">
		<table id="lista">
			<tr>
				<th>Nº Reserva</th>
				<th>Data</th>
				<th>Nome</th>
				<th>Email</th>
				<th>Nº Pessoas</th>
				<th>Refeição</th>
			</tr>
			<%
				Connection cn=ligacaomysql.criarligacaomysql();
				Statement st=cn.createStatement();
				ResultSet rs=st.executeQuery("select * from reserva");
				while(rs.next()){
					out.println("<tr><td>"+rs.getString(1)+"</td>");
					out.println("<td>"+rs.getString(2)+"</td>");
					out.println("<td>"+rs.getString(3)+"</td>");
					out.println("<td>"+rs.getString(4)+"</td>");
					out.println("<td>"+rs.getString(5)+"</td>");
					out.println("<td>"+rs.getString(6)+"</td></tr>");
				}
				cn.close();
			%>
		</table>
		<br><br>
		<a href="index1.jsp">Voltar</a>
	</div>
</body>
</html>