<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="ligarbd.*" %>
<%@page import="java.sql.*" %>
<%@page import="JavaMail.*" %>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Restaurante Paga Pouco</title>
<link rel="icon" href="imagens/faviconrest.jpg">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%
		String data=request.getParameter("txt_data");
		String nome=request.getParameter("txt_nome");
		String email=request.getParameter("txt_email");
		String pessoas=request.getParameter("txt_pessoas");
		String refeicao=request.getParameter("txt_refeicao");
		
		enviarMail em=new enviarMail(email, "Reserva Paga Pouco", "Exmo(a) Senhor(a):"+nome+" a sua reserva foi efetuada com sucesso.");
		em.send_mail();
		
		
		try{
			Connection cn=ligacaomysql.criarligacaomysql();
			Statement st=cn.createStatement();
			st.executeUpdate("insert into reserva (data,nome,email,pessoas,refeicao) values('"+data+"','"+nome+"','"+email+"','"+pessoas+"','"+refeicao+"')");
			out.println("<h3>Reserva efetuada</h3>");
		}
		catch(SQLException e){
			out.println("<h3>Erro ao efetuar a reserva</h3>");
		}
	%>
	
</body>
</html>