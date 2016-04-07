<%-- 
    Document   : relatorios
    Created on : 07/04/2016, 14:19:38
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Relatorios em PDF</title>
    </head>
    <body>
        <h1>RELATÓRIOS</h1>
        <form action="ChamadaRelatorio">
            <br>
            <br>
            Relatorio Geral:  <input type="submit" value="Gerar Relatorio Geral">
            <br>
            <br>
        </form>
        <form action="RelatorioDependencia">
            Dependencia:   <input type="text" name="nomeDependencia"> <input type="submit" value="Gerar Relatorio">
        </form>
        <br>
        <br>
        <h1>RELATÓRIOS EM PDF</h1>
        <br>
        Geração de relatório:
        <br>
        <a href="ChamadaRelatorio" target="_blank">Clique aqui para gerar o relatório!</a>
    </body>
</html>
