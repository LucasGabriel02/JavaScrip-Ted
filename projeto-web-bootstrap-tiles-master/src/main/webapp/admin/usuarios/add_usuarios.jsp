<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>

<mt:admin_tamplate title="Projeto" breadcrumb="Cadastrar Usuário">

	<jsp:attribute name="content">
	
	<section class="content">
			
		  <section class="content-header">
		  
		    <p class="text-center h4 mb-4">Novo Usuário</p>
			<form method="POST" action="${pageContext.request.contextPath}/usuarioController">
			
			    
			    <div class="form-group">
   					 <div class="form-check">
						  <input class="form-check-input" type="radio" name="perfil" id="admin" value="administrador">
						  <label class="form-check-label" for="admin">Administrador</label>
					</div>
				</div>
			    
				 <div class="form-group">
   					 <div class="form-check">			    
						  <input class="form-check-input" type="radio" name="perfil" id="visitante" value="visitante">
						  <label class="form-check-label" for="visitante">Visitante</label>
					</div>
				</div>	
				
				<div class="form-group">
				    <!-- Name -->
				    <input name="nome" type="text" id="nome" class="form-control mb-4" placeholder="Name">
			    </div>
			
				<div class="form-group">
				    <!-- Email -->
				    <input  name="login" type="text" id="login" class="form-control mb-4" placeholder="Login">
			    </div>
			    
			    <div class="form-group">
				     <!-- CNPJ -->
				    <input  name="senha" type="password" id="senha" class="form-control mb-4" placeholder="Senha">
			    </div>
			
			    <!-- Enviar -->
			    <button id="btn-salvar" class="btn btn-info btn-sm" type="submit">Salvar</button>
			    
			    <!-- Listar -->
			    <a href="usuarioController?action=list" class="btn btn-info btn-sm" type="submit">Usuários</a>
			
			</form>

	     </section>
     
		 </section>
		 
		

</jsp:attribute>

</mt:admin_tamplate>
