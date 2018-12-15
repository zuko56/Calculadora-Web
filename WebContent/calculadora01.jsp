<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@include file="head.jsp"%>
<body>
	<%@include file="header.jsp"%>
	<h1>Calculadora Web</h1>
	<form method="GET" action="/calculadora/result">
		Valor 1: <input type="text" name="valor1" /> <br /> 
		Valor 2: <input type="text" name="valor2" /> <br />
		<br />

		<%=request.getAttribute("exemplo")%>
		<button type="submit" name="operacao" value="soma">Somar</button>
		<button type="submit" name="operacao" value="subtrair">Subtrair</button>
		<button type="submit" name="operacao" value="multiplicar">Multiplicar</button>
		<button type="submit" name="operacao" value="dividir">Dividir</button>
	</form>
</body>
</html>