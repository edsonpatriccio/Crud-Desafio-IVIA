<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>

<title>Consultar usuarios</title>
<script type="text/javascript">
	$(document).ready(function() {
		$("#idDddCadastrar").keyup(function() {
		    $("#idDddCadastrar").val(this.value.match(/[0-9]*/));
		});
	});
</script>
</head>
<body>

<nav class="navbar navbar-light" style="background-color: #B0C4DE;">
	
	<!-- Navbar brand -->
  <a class="navbar-brand" href="#">Grud Sefaz IVIA</a>
  
 
  
</nav>

<div class="d-flex justify-content-center">
	<form id="allForms" action="usuario" method="post" class="mt-5 p-4 border" style="width: 35rem;">
	<input type="hidden" name="option" value="cadastrar"></input>
	<h4 class="mb-4">Cadastro</h4>
	  <div class="form-group">
	    <label for="inputAddress">Nome</label>
	    <input type="text" class="form-control" name="nome" id="idNomeCadastrar" obrigatorio placeholder="Seu nome aqui...">
	  </div>
	  <div class="form-row">
	    <div class="form-group col-md-6">
	      <label for="inputEmail4">Email</label>
	      <input type="email" class="form-control" name="email" id="idEmailCadastrar" obrigatorio placeholder="Email">
	    </div>
	    <div class="form-group col-md-6">
	      <label for="inputPassword4">Senha</label>
	      <input type="password" class="form-control" name="senha" id="idSenhaCadastrar" obrigatorio placeholder="Senha">
	    </div>
	  </div>
	  <div class="form-row">
	    <div class="form-group col-md-2">
	      <label for="inputCity">DDD</label>
	      <input type="text" class="form-control" name="ddd" id="idDddCadastrar" maxlength="2" pattern="([0-9]{2})" obrigatorio placeholder="Ex. 81" min="2" max="3">
	    </div>
	    <div class="form-group col-md-6">
	      <label for="inputEstado">Numero</label>
	      <input type="text" class="form-control" name="numero" id="idNumeroCadastrar" obrigatorio placeholder="99999-9999">
	    </div>
	    <div class="form-group col-md-4">
	      <label for="inputCEP">Tipo</label>
	      <input type="text" class="form-control" name="tipo" id="idTipoCadastrar" obrigatorio placeholder="Ex. Fixo">
	    </div>
	  </div>
	  <input type="submit" value="Cadastrar" class="btn btn-success mr-1"></input>
	  <a href="/views/index.jsp" class="btn btn-primary">Voltar</a>
	</form>
</div>
</body>
</html>