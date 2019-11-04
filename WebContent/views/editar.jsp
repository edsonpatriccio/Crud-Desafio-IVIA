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

<title>Editar usuario</title>
<script type="text/javascript">
	$(document).ready(function() {
		$("#idDddEdita").keyup(function() {
		    $("#idDddEdita").val(this.value.match(/[0-9]*/));
		});
	});
</script>
</head>

<body>
	
<nav class="navbar navbar-light" style="background-color: #B0C4DE;">
	
	<!-- Navbar brand -->
  <a class="navbar-brand" href="#">Grud Sefaz IVIA</a>
  
 
  <!-- Collapse button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent15"
    aria-controls="navbarSupportedContent15" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span>
  </button>
	<!-- Collapsible content -->
  <div class="collapse navbar-collapse" id="navbarSupportedContent15">

    <!-- Links -->
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Cadastrar</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Consultar</a>
      </li>
    </ul>
    <!-- Links -->

  </div>
  <!-- Collapsible content -->
	
</nav>
	<div class="pr-3 pl-3">
	
		<h3 class="mt-5 mb-3">Edição de usuários:</h3>
		
		<table class="table table-bordered mt-1">
			<thead>
				<tr>
				    <th scope="col"></th>
					<th scope="col">ID</th>
					<th scope="col">Nome</th>
					<th scope="col">Email</th>
					<th scope="col">Senha</th>
					<th scope="col">DDD</th>
					<th scope="col">Numero</th>
					<th scope="col">Tipo</th>
					<th scope="col">Edição</th>
					<th scope="col">Deleção</th>
				</tr>
			</thead>

			<tbody>
				<tr>
				    <th><c:out value=""> <input type='checkbox' name='posicao' value='0'/></c:out></th>				
					<th><c:out value="${usuarios.id}"></c:out></th>
					<td><c:out value="${usuarios.nome}"></c:out></td>
					<td><c:out value="${usuarios.email}"></c:out></td>
					<td><c:out value="${usuarios.senha}"></c:out></td>
					<td><c:out value="${usuarios.ddd}"></c:out></td>
					<td><c:out value="${usuarios.numero}"></c:out></td>
					<td><c:out value="${usuarios.tipo}"></c:out></td>
					<td><c:out value="${usuarios.id}">
					<div class="navbar-nav">
					<input type="submit" value="Editar" class="btn btn-info"></input>
			        </div>
					</c:out></td>
					
					<td><c:out value="${usuarios.id}">
					<div class="navbar-nav">
					<input type="submit" value="Deletar" class="btn btn-danger"></input>
			        </div>
					</c:out></td>
					
				</tr>
			</tbody>
		</table>
	</div>
	
	<div class="d-flex justify-content-center">
		<form id="allForms" action="usuario" method="post" class="mt-2 p-4 border" style="width: 35rem;">
			<c:set var="usuarios" value="${usuarios}"></c:set>
			<input type="hidden" name="option" value="editar"></input> 
			<input type="hidden" name="id" value="${usuarios.id}"></input>
			<h4 class="mb-4">Edição</h4>
			<div class="form-group">
				<label for="inputAddress">Nome</label> 
				<input type="text" class="form-control" name="nome" id="idNomeEdita" obrigatorio placeholder="" value="">
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputEmail4">Email</label> <input type="email" class="form-control" 
					name="email" id="idEmailEdita" value="">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Senha</label> <input type="password" class="form-control" 
					name="senha" id="idSenhaEdita" value="">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-2">
					<label for="inputCity">DDD</label> <input type="text" class="form-control" name="ddd" id="idDddEdita" maxlength="2"
						pattern="([0-9]{2})"  value="">
				</div>
				<div class="form-group col-md-6">
					<label for="inputEstado">Numero</label> <input type="text" class="form-control" name="numero" id="idNumeroEdita" value="">
				</div>
				<div class="form-group col-md-4">
					<label for="inputCEP">Tipo</label> <input type="text" class="form-control" name="tipo" id="idTipoEdita" value="">
				</div>
			</div>
			<input type="submit" value="Atualizar" class="btn btn-success"></input>
			<a href="usuario?option=consultar" class="btn btn-danger">Cancelar</a>
		</form>
	</div>
</body>
</html>