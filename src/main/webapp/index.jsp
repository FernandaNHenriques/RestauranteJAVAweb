<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Restaurante Paga Pouco</title>
<link rel="icon" href="imagens/faviconrest.jpg">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<h1>Restaurante Paga Pouco</h1>
	<div align="center">
	<%
		Calendar C=new GregorianCalendar();
		int ds=C.get(Calendar.DAY_OF_WEEK);
		switch(ds){
		
		case 0:
			out.println("<h3>Hoje é sábado!</h3>");
			out.println("<img src=imagens/bacalhau.jpg>");
			break;
		case 1:
			out.println("<h3>Hoje é domingo!</h3>");
			out.println("<img src=imagens/bifanas.jpg>");
			break;
		case 2:
			out.println("<h3>Hoje é segunda-feira!</h3>");
			out.println("<img src=imagens/cabidela.jpg>");
			break;
		case 3:
			out.println("<h3>Hoje é terça-feira!</h3>");
			out.println("<img src=imagens/cozido.jpeg>");
			break;
		case 4:
			out.println("<h3>Hoje é quarta-feira!</h3>");
			out.println("<img src=imagens/francesinha.jpg>");
			break;
		case 5: 
			out.println("<h3>Hoje é quinta-feira!</h3>");
			out.println("<img src=imagens/porcoalantejano.jpeg>");
			break;
		case 6:
			out.println("<h3>Hoje é sexta-feira!</h3>");
			out.println("<img src=imagens/sardinhas.jpg>");
			break;
		}
	%>
	
	</div>
</body>
</html>