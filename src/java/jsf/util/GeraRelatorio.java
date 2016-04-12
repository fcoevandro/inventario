/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsf.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.HashMap;
import javax.swing.JOptionPane;

import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.JasperRunManager;

public class GeraRelatorio {

    // Método para realizar a conexão com o banco de dados
    public Connection getConexao() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexao = DriverManager.getConnection("jdbc:mysql://localhost/inventarioweb", "root", "root");
        return conexao;
    }

    public static Connection conectar = null;

    public void Conectar() throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {

        Class.forName("com.mysql.jdbc.Driver").newInstance();
        conectar = DriverManager.getConnection("jdbc:mysql://localhost/inventarioweb", "root", "root");

    }

    public byte[] gerarPDF(String diretorio) {
        byte[] retorno = null;
        String relatorio = diretorio + "REL_ALL.jrxml";
        //String imagem = diretorio + "cherry.jpg";
        try {
            // Faz a compilação do relatório
            JasperReport jasperReport = JasperCompileManager.compileReport(relatorio);

            // Cria o mapa de parâmetros que será enviado ao relatório
            HashMap<String, Object> paramatros = new HashMap<String, Object>();

            // Faz o apontamento para a imagem que aparece no top do relatório
            //paramatros.put("logo", imagem);
            // Preenche os dados do relatório
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, paramatros, getConexao());

            // Objeto para a ser retornado
            retorno = JasperRunManager.runReportToPdf(jasperReport, paramatros, getConexao());

            // Gera o arquivo PDF no caminho especificado
            //JasperExportManager.exportReportToPdfFile(jasperPrint, "C:/temp/Relatorio.pdf");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return retorno;
    }

    public byte[] gerarPDFSelecionado(String parametro, String pathRelatorio, String relatorio) {
        byte[] retorno = null;
        //String relatorio = diretorio + "REL_DEPENDENCIA.jrxml";
        //String imagem = diretorio + "cherry.jpg";
        try {
            // Faz a compilação do relatório
            JasperReport jasperReport = JasperCompileManager.compileReport(pathRelatorio);

            // Cria o mapa de parâmetros que será enviado ao relatório
            String parRelatorio = "parametro" + relatorio;
            //System.out.print("Imprimindo relatorio" + relatorio + " no endereco " + pathRelatorio + " com parametro " + parametro + " para " + parRelatorio);
            HashMap<String, Object> par = new HashMap<String, Object>();
            par.put(parRelatorio, parametro);
            System.out.print(par);

            // Faz o apontamento para a imagem que aparece no top do relatório
            //paramatros.put("logo", imagem);
            // Preenche os dados do relatório
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, par, getConexao());

            // Objeto para a ser retornado
            retorno = JasperRunManager.runReportToPdf(jasperReport, par, getConexao());

            // Gera o arquivo PDF no caminho especificado
            //JasperExportManager.exportReportToPdfFile(jasperPrint, "C:/temp/Relatorio.pdf");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return retorno;
    }

    public byte[] gerarPDFGeral(String parametroDependencia, String parametroArea, String parametroTipoequipamento, String parametroFabricante,
            String parametroModelo, String parametroConfiguracao, String parametroUsuario, String parametroPatrimonio, String parametroObservacao, String parametroSerial, String pathRelatorio) {
        byte[] retorno = null;
        //String relatorio = diretorio + "REL_DEPENDENCIA.jrxml";
        //String imagem = diretorio + "cherry.jpg";
        try {
            // Faz a compilação do relatório
            JasperReport jasperReport = JasperCompileManager.compileReport(pathRelatorio);

            // Cria o mapa de parâmetros que será enviado ao relatório
            //System.out.print("Imprimindo relatorio" + relatorio + " no endereco " + pathRelatorio + " com parametro " + parametro + " para " + parRelatorio);
            HashMap<String, Object> par = new HashMap<String, Object>();
            par.put("parametroDependencia", parametroDependencia);
            par.put("parametroArea", parametroArea);
            par.put("parametroTipoequipamento", parametroTipoequipamento);
            par.put("parametroFabricante", parametroFabricante);
            par.put("parametroModelo", parametroConfiguracao);
            par.put("parametroUsuario", parametroUsuario);
            par.put("parametroPatrimonio", parametroPatrimonio);
            par.put("parametroObservacao", parametroObservacao);
            par.put("parametroSerial", parametroSerial);
            // Faz o apontamento para a imagem que aparece no top do relatório
            //paramatros.put("logo", imagem);
            // Preenche os dados do relatório
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, par, getConexao());

            // Objeto para a ser retornado
            retorno = JasperRunManager.runReportToPdf(jasperReport, par, getConexao());

            // Gera o arquivo PDF no caminho especificado
            //JasperExportManager.exportReportToPdfFile(jasperPrint, "C:/temp/Relatorio.pdf");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return retorno;
    }
    
}
