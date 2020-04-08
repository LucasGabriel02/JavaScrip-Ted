<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>

<mt:admin_tamplate title="Projeto" breadcrumb="Cadastrar Usuarios">
	<jsp:attribute name="content">



	<div id="minhadiv">
		 
		 <button onclick="a()" class="btn btn-info btn-sm" type="submit">Visualizar</button>
		 <br/>
	</div>
	
	
	<form class="form-signin">
		  <h1 class="h3 mb-3 font-weight-normal">Cadastro de Usuario</h1>
		  
		  <label for="nome" class="sr-only">Nome</label>
		  <input type="nome" id="nome" name="nome" class="form-control" placeholder="Nome" required autofocus>
		  <br/>
		  
		  <label for="sobrenome" class="sr-only">Sobrenome</label>
		  <input type="sobrenome" id="nome" name="sobrenome" class="form-control" placeholder="Sobrenome" required autofocus>
		  <br/>
		  
		  <label for="email" class="sr-only">Email</label>
		  <input type="email" id="email" name="email" class="form-control" placeholder="E-mail" required autofocus>
		    <br/>
		  <label for="senha" class="sr-only">Senha</label>
		  <input type="password" id="senha" name="senha" class="form-control" placeholder="Senha" required>
		  <br/>
		  <input id="btnLogar" class="btn btn-lg btn-primary btn-block" type="submit" value="Salvar">
		  <br/>
		  
	</form>
	
	
	
	<script>
	function lerStorage(){
		
		for (var g = 0; g < localStorage.length; g++) {
			
			var armazenamento = localStorage.getItem("Usuario Cadastrado Com Sucesso"+g);
			
			document.write(armazenamento);
			
		}
		
	}
	
	
</script>
		
		
	</jsp:attribute>

</mt:admin_tamplate>
