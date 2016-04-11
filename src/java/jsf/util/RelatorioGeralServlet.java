/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsf.util;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrador
 */
public class RelatorioGeralServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            // Pega o caminho completo de onde a aplicação está rodando
            ServletContext servletContext = getServletContext();
            String diretorio = servletContext.getRealPath(File.separator) + "WEB-INF/classes/relatorios/";

            // Instaciar a classe que possui os métodos de geração de relatório
            String pathRelatorio = diretorio + "relGeral.jrxml";
            String parametroDependencia = request.getParameter("nomeDependencia");
            String parametroArea = request.getParameter("nomeArea");
            String parametroTipoequipamento = request.getParameter("nomeTipo");
            String parametroFabricante = request.getParameter("nomeFabricante");
            String parametroModelo = request.getParameter("nomeModelo");
            String parametroConfiguracao = request.getParameter("nomeConfiguracao");
            String parametroPatrimonio = request.getParameter("nomePatrimonio");
            String parametroUsuario = request.getParameter("nomeUsuario");
            String parametroObservacao = request.getParameter("nomeObservacao");
            String parametroSerial = request.getParameter("nomeSerial");
            System.out.print("Imprimindo relatorio no endereco " + pathRelatorio + " com parametros: "
                    + "Dependencia: " + parametroDependencia
                    + ", Area: " + parametroArea + ", Tipo: " + parametroTipoequipamento
                    + ", Fabricante: " + parametroFabricante + ", Modelo: " + parametroModelo
                    + ", Configuração: " + parametroConfiguracao + ", Serial: " + parametroSerial + ", Patrimonio: " + parametroPatrimonio
                    + ", Usuario: " + parametroUsuario + ", Observação: " + parametroObservacao);

            GeraRelatorio geraRelatorio = new GeraRelatorio();

            // Chama o método que gera um array de bytes com o
            // conteúdo do arquivo PDF
            byte[] pdf = geraRelatorio.gerarPDFGeral(parametroDependencia, parametroArea, parametroTipoequipamento, parametroFabricante,
                    parametroModelo, parametroConfiguracao, parametroUsuario, parametroPatrimonio, parametroObservacao, parametroSerial, pathRelatorio);

            OutputStream outStream = response.getOutputStream();
            response.setHeader("application/pdf", "Content-Type");
            //response.setHeader("Content-Disposition", "inline, filename=RelatorioAluno.pdf");
            response.setContentType("application/pdf");
            response.setContentLength(pdf.length);
            outStream = response.getOutputStream();
            outStream.flush();
            outStream.write(pdf, 0, pdf.length);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

}
