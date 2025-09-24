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
		String[] diasemana={"Sábado","Domingo","Segunda-feira","Terça-feira",
				"Quarta-feira","Quinta-feira","Sexta-feira"};
		String[] imagem={"bacalhau.jpg","bifanas.jpg","cabidela.jpg","cozido.jpeg",
				"francesinha.jpg","porcoalantejano.jepg","sardinhas.jpg"};
		String[] pratos={"Bacalhau a Brás","Bifanas","Arroz de Cabidela","Cozido à Portuguesa","Francesinha",
				"Porco Assado à Alentejano","Sardinhas Assadas"}; 
		out.println("<h3>Hoje é "+diasemana[ds]+"</h3>");
		out.println("<img src=imagens/"+imagem[ds]+">");
		out.println("<h3>O prato do dia é "+pratos[ds]+"</h3>");
	%>
	<form name="frm" method="POST" action="reservar.jsp">
		<label>Data</label><br>
		<input type="date" name="txt_data" required><br>
		<label>Nome</label><br>
		<input type="text" name="txt_nome" required><br>
		<label>Email</label><br>
		<input type="email" name="txt_email" required><br>
		<label>Nº Pessoas</label><br>
		<input type="number" name="txt_pessoas" required><br>
		<label>Refeição</label><br>
		<select name="txt_refeicao" required>
			<option value="">Selecione a refeição</option>
			<option value="Almoço">Almoço</option>
			<option value="Jantar">Jantar</option>
		</select>
		<br><br>
		<input type="submit" value="Reservar">
		<input type="reset" value="Cancelar">
	</form>
	
	</div>
</body>
</html> 