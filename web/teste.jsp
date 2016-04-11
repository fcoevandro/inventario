<%-- 
    Document   : teste
    Created on : 11/04/2016, 11:53:18
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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>RELATÓRIOS</h1>
        <br>
        <br>

        <%
            GeraRelatorio cn = new GeraRelatorio();
            Statement stmt = null;
            ResultSet rs = null;
        %>
        <form action="RelatorioSelecionadoServlet">
            <br>
            <br>
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
            DEPENDENCIA: <select name="valorSelecionado">
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
            <br><br> 
        </form>
    </body>
</html>
