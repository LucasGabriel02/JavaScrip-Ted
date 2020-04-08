<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>

<mt:admin_tamplate title="Projeto" breadcrumb="Usuários">
	<jsp:attribute name="content">
	
	<section class="content">
			
		  <section class="content-header">
			<h2> Usuarios</h2>
			
			<div>
				<p>Opções de Usuarios</p>
				<a
				href="${pageContext.request.contextPath}/admin/teste/lista_usuario.jsp"
				class="btn btn-info btn-sm" type="submit">Lista de Usuarios</a>
				
				<a
				href="${pageContext.request.contextPath}/admin/teste/add_usuario.jsp"
				class="btn btn-info btn-sm" type="submit">Cadastro</a>
				
				<a
				href="${pageContext.request.contextPath}/admin/teste/editar_usuario.jsp"
				class="btn btn-info btn-sm" type="submit">Editar</a>
				
				<a
				href="${pageContext.request.contextPath}/admin/teste/remover_usuario.jsp"
				class="btn btn-info btn-sm" type="submit">Remover</a>
			</div> 
			
	     </section><br><br>
     		
     	
     	
     	
     </section>
   
</jsp:attribute>

</mt:admin_tamplate>

<script>
	function lerStorage(){
		
		for (var g = 0; g < localStorage.length; g++) {
			
			var armazenamento = localStorage.getItem("Usuario Cadastrado Com Sucesso"+g);
			
			document.write(armazenamento);
			
		}
		
	}
	
	
</script>
