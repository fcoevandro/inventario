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
        <br>
        <br>
        <form action="RelatorioSelecionadoServlet">
            Relatorio por: <select name="nomeRelatorio">
                <option></option>
                <option>Dependencia</option>
                <option>Patrimonio</option>
                <option>Serial</option>
                <option>Area</option>
                <option>Tipo</option>
                <option>Usuario</option>
            </select>
            <br><br>
            Valor: <input type="text" name="valorSelecionado"/> <input type="submit" value="Gerar Relatorio"/>
            <br>            
        </form>
        <br>
        <form action="ChamadaRelatorioServlet">
            <br>
            <br>
            Relatorio Geral:  <input type="submit" value="Gerar Relatorio Geral"/>
            <br>
            <br>
        </form>
    </body>
</html>
