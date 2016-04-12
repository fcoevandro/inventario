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
        <hr size="1">
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
            <br><br>  
            <hr size="1">
        </form>
        <form action="ChamadaRelatorioServlet">
            <br>
            Relatorio Geral:  <input type="submit" value="Gerar Relatorio Geral"/>
            <br><br>
            <hr size="1">
        </form>
        <br>
        <%
            GeraRelatorio cn = new GeraRelatorio();
            Statement stmt = null;
            ResultSet rs = null;
        %>
        <form action="RelatorioGeralServlet">
            DEPENDENCIA: <select name="nomeDependencia">
                <%
                    try {
                        cn.Conectar();
                        String sql = "SELECT * FROM dependencia;";
                        stmt = cn.conectar.createStatement();
                        rs = stmt.executeQuery(sql);
                        out.println("<option></option>");
                        while (rs.next()) {
                            out.println("<option>" + rs.getString(2) + "</option>");

                        }
                    } catch (Exception e) {
                        out.print(e.toString());
                    }

                %>
            </select>
            <br><br>
            AREA: <select name="nomeArea">

                <%                    try {
                        cn.Conectar();
                        String sql = "SELECT * FROM area;";
                        stmt = cn.conectar.createStatement();
                        rs = stmt.executeQuery(sql);
                        out.println("<option></option>");
                        while (rs.next()) {
                            out.println("<option>" + rs.getString(2) + "</option>");

                        }
                    } catch (Exception e) {
                        out.print(e.toString());
                    }

                %>
            </select>
            <br><br>
            TIPO DE EQUIPAMENTO: <select name="nomeTipo">

                <%                    try {
                        cn.Conectar();
                        String sql = "SELECT * FROM tipoequipamento;";
                        stmt = cn.conectar.createStatement();
                        rs = stmt.executeQuery(sql);
                        out.println("<option></option>");
                        while (rs.next()) {
                            out.println("<option>" + rs.getString(2) + "</option>");

                        }
                    } catch (Exception e) {
                        out.print(e.toString());
                    }

                %>
            </select>

            <br><br>
            FABRICANTE: <select name="nomeFabricante">

                <%                    try {
                        cn.Conectar();
                        String sql = "SELECT * FROM fabricante;";
                        stmt = cn.conectar.createStatement();
                        rs = stmt.executeQuery(sql);
                        out.println("<option></option>");
                        while (rs.next()) {
                            out.println("<option>" + rs.getString(2) + "</option>");

                        }
                    } catch (Exception e) {
                        out.print(e.toString());
                    }

                %>
            </select>
            <br><br>
            MODELO: <select name="nomeModelo">

                <%                    try {
                        cn.Conectar();
                        String sql = "SELECT * FROM modelo;";
                        stmt = cn.conectar.createStatement();
                        rs = stmt.executeQuery(sql);
                        out.println("<option></option>");
                        while (rs.next()) {
                            out.println("<option>" + rs.getString(2) + "</option>");

                        }
                    } catch (Exception e) {
                        out.print(e.toString());
                    }

                %>
            </select>
            <br><br>
            CONFIGURAÇÃO: <select name="nomeConfiguracao">

                <%                    try {
                        cn.Conectar();
                        String sql = "SELECT * FROM configuracao;";
                        stmt = cn.conectar.createStatement();
                        rs = stmt.executeQuery(sql);
                        out.println("<option></option>");
                        while (rs.next()) {
                            out.println("<option>" + rs.getString(2) + "</option>");

                        }
                    } catch (Exception e) {
                        out.print(e.toString());
                    }

                %>
            </select>
            <br><br>
            PATRIMONIO: <input type="text" name="nomePatrimonio"/>
            <br><br>
            USUARIO: <input type="text" name="nomeUsuario"/>
            <br><br>             
            SERIAL: <input type="text" name="nomeSerial"/>
            <br><br> 
            OBSERVAÇÃO: <input type="text" name="nomeObservacao"/>
            <br><br> 
            <input type="submit" value="Gerar Relatorio"/>
            <br>
            <br>
            <hr size="1">
            <br> 
        </form>
        <br>
    </body>
</html>
