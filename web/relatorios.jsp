<%-- 
    Document   : relatorios
    Created on : 07/04/2016, 14:19:38
    Author     : Administrador
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="jsf.util.GeraRelatorio"%>
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
        <br>
        <br>
        <br>
        <br>
        <h1>RELATÓRIOS GERAL POR:</h1>
        <br>
        <br>
        <form action="RelatorioSelecionadoServlet">
            ÁREA : <select name="nomeRelatorio1">
                import java.sql.ResultSet;
                <%

                    GeraRelatorio cn = new GeraRelatorio();
                    Statement stmt = null;
                    ResultSet rs = null;

                    try {
                        cn.Conectar();
                        String sql = "SELECT * FROM area;";
                        stmt = cn.conectar.createStatement();
                        rs = stmt.executeQuery(sql);
                        while (rs.next()) {
                            out.println("<option>" + rs.getString(2) + "</option>");

                        }
                    } catch (Exception e) {
                        out.print(e.toString());
                    }

                %>

            </select><input type="submit" value="Gerar Relatorio"/>
            <br><br>
            <br>            
        </form>

    </body>
</html>
