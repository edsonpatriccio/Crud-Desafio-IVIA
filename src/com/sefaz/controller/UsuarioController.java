package com.sefaz.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sefaz.dao.PersisDAO;
import com.sefaz.model.Usuario;

/**
 * Implementação da classe UsuarioController
 */
@WebServlet(description = "administracao de peticoes para a tabela de usuario", urlPatterns = { "/usuario" })
public class UsuarioController extends HttpServlet {  
	private static final long serialVersionUID = 1L;
       
    public UsuarioController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * Método GET para pegar os valores dos atributos
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//Direcionemento da pagina de acordo com a opoção
		String option = request.getParameter("option");
		if (option.equals("cadastrar")) { // PC Cadastro
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/cadastrar.jsp");
			requestDispatcher.forward(request, response);
		} else if (option.equals("index")) { // PC Login
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
			requestDispatcher.forward(request, response);
		} else if (option.equals("home")) { //PG principal
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/home.jsp");
			requestDispatcher.forward(request, response);
		} else if (option.equals("consultar")) { // PC Consultar 
			PersisDAO persisDao = new PersisDAO();
			List<Usuario> lista = new ArrayList<>();
			
			try { //A consulta pode retornar zero o mais usuários
				lista = persisDao.arrayUsuarios();
				request.setAttribute("lista", lista);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/consultar.jsp");
				requestDispatcher.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (option.equals("editar")) { //Pega o ID do usuario para editar
			int id = Integer.parseInt(request.getParameter("id"));
			PersisDAO persisDao = new PersisDAO();
			Usuario u = new Usuario();
			try {
				u = persisDao.getUsuario(id); 
				request.setAttribute("usuarios", u);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/editar.jsp");
				requestDispatcher.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (option.equals("deletar")) {  //Pega o ID do usuario para deletar
			PersisDAO persisDao = new PersisDAO();
			int id = Integer.parseInt(request.getParameter("id"));
			try {
				persisDao.delete(id);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/deleteSuccess.jsp");
				requestDispatcher.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * Método SET para mofdificar os valores dos atributos
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String option = request.getParameter("option");
		
		
		if (option.equals("cadastrar")) { //Utilização do metodo cadastrar
			PersisDAO persisDao = new PersisDAO();
			Usuario usuario = new Usuario();
			usuario.setNome(request.getParameter("nome"));
			usuario.setEmail(request.getParameter("email"));
			usuario.setSenha(request.getParameter("senha"));
			usuario.setDdd(Integer.parseInt(request.getParameter("ddd")));
			usuario.setNumero(request.getParameter("numero"));
			usuario.setTipo(request.getParameter("tipo"));
			
			try {
				persisDao.include(usuario);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/cadastroSuccess.jsp");
				requestDispatcher.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} else if (option.equals("editar")) { //Utilização do metodo editar
			PersisDAO persisDao = new PersisDAO();
			Usuario usuario = new Usuario();
			usuario.setId(Integer.parseInt(request.getParameter("id")));
			usuario.setNome(request.getParameter("nome"));
			usuario.setEmail(request.getParameter("email"));
			usuario.setSenha(request.getParameter("senha"));
			usuario.setDdd(Integer.parseInt(request.getParameter("ddd")));
			usuario.setNumero(request.getParameter("numero"));
			usuario.setTipo(request.getParameter("tipo"));
			
			try {
				persisDao.edit(usuario);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/atualizaSuccess.jsp");
				requestDispatcher.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//Utilização do metodo de autenticação do usuario
		}
		
		//doGet(request, response);
	}

}
