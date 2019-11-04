package com.sefaz.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Implementação da classe UsuarioLoginController para desautenticar usuário
 */
@WebServlet(description = "administracao de peticoes para a tabela de usuario", urlPatterns = { "/logout" })
public class UsuarioLogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UsuarioLogoutController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * Método GET para enserrar a sessão do usuario
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String option = request.getParameter("option");
		HttpSession session = request.getSession(false);
		
		if (option.equals("sair")) {
			if (session != null) {
			    session.invalidate();
			    System.out.println("finalizada");
			    response.sendRedirect("index.jsp");
			}
		}
	}

}
