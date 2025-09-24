<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="ligarbd.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ligação Base de Dados</title>
</head>
<body>
	<%
		ligacaomysql.criarligacaomysql();
		out.println(ligacaomysql.estadoligacao());
	%>

</body>
</html>