<%-- 
    Document   : CalcWeb
    Created on : 04/12/2018, 21:01:35
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Calculadora</h1>
        <form method="GET" action="">
            Valor 1: <input type="texte" name="valor1"/> <br/>
            Valor 2: <input type="texte" name="valor2"/>
            
            
            <button type="submit" name="operacao" value="somar">Somar</button>
            <button type="submit" name="operacao" value="subtrair">Subtrair</button>
            <button type="submit" name="operacao" value="multiplicar">Multiplicar</button>
            <button type="submit" name="operacao" value="dividir">Dividir</button>
        </form>
            
    </body>
</html>
