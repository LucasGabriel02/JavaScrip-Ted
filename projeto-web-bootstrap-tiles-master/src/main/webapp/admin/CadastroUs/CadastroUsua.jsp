<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>

<mt:admin_tamplate title="Projeto" breadcrumb="">
	<jsp:attribute name="content">


	
	
	<form class="form-signin">
		  
		  
		  <label for="ID" class="sr-only">ID</label>
		  <input type="ID" id="ID" name="ID" class="form-control" placeholder="ID" required autofocus>
		  <br><br/>
		  
		  
		  <label for="nome" class="sr-only">Nome</label>
		  <input type="nome" id="nome" name="nome" class="form-control" placeholder="Nome" required autofocus>
		 
		  
		  
		  <br><br/>
		  
		  <label for="email" class="sr-only">Login</label>
		  <input type="email" id="email" name="email" class="form-control" placeholder="Login" required autofocus>
		  <br><br/>
		    
		  <label for="nome" class="sr-only">Nome</label>
		  <input type="nome" id="nome" name="nome" class="form-control" placeholder="Permissão" required autofocus>
		  
		  <br><br/>
		  
		  <a href="${pageContext.request.contextPath}/admin/usuarios/usuarios.jsp"class="btn btn-primary">Cadastrar</a>&nbsp;&nbsp;&nbsp;&nbsp;
		  
		  
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
