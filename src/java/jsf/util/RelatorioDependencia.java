/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsf.util;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrador
 */
public class RelatorioDependencia extends HttpServlet {

 	private static final long serialVersionUID = 1L;
 
        @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
 
        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		try {
 
			// Pega o caminho completo de onde a aplicação está rodando
			ServletContext servletContext = getServletContext();
			String diretorio = servletContext.getRealPath(File.separator) + "WEB-INF/classes/relatorios/";
 
			// Instaciar a classe que possui os métodos de geração de relatório
			GeraRelatorio geraRelatorio = new GeraRelatorio();
 
			// Chama o método que gera um array de bytes com o
			// conteúdo do arquivo PDF
                        String nome = request.getParameter("nomeDependencia");
			byte[] pdf = geraRelatorio.gerarPDFDependencia(diretorio, nome);
 
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
}
