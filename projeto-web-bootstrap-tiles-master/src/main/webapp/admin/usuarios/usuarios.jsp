<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>

<mt:admin_tamplate title="Projeto" breadcrumb="Usuários">
	<jsp:attribute name="content">
	
	<section class="content">
			
			
			<p class="h4 mb-4 text-center border border-light p-5">Usuários</p>
			<table class="table table-sm table-striped">
			 
			  <thead>
			    <tr>
			      <th scope="col">Id</th>
			      <th scope="col">Nome</th>
			      <th scope="col">Login</th>
			      <th scope="col">Permissão</th>
			      <th scope="col">Ações</th>
			    </tr>
			  </thead>
			  
			  
			  
			  <c:forEach var="u" items="${usuarios}">
			  <tr>
			  
			  <td>${u.id == null ? '02022000' : u.id}</td>
			  <td>${u.nome == null ? 'Lucas' : u.nome}</td>
			  
			  <td>${u.login == null ? 'lucas@gmail.com' : u.login}</td>
			  <td>${u.administrador == true ? 'Administrador' : 'Visitante'}</td>
			  
			  
			  <td>
              <a href="usuarioController?id=${u.id}&action=editar" class="btn btn-primary">Editar</a>&nbsp;&nbsp;&nbsp;&nbsp;
              
              
                        		
              <button value="Excluir" type="button" 
              onclick="excluir('${u.id}','${u.nome}');"
              
              class="btn btn-danger" data-toggle="modal" data-target="#exluirUsuario"> Excluir</button> &nbsp;&nbsp;
              
              <a href="${pageContext.request.contextPath}/admin/CadastroUs/CadastroUsua.jsp"class="btn btn-primary">Cadastrar</a>&nbsp;&nbsp;&nbsp;&nbsp;

              </td>
              </tr>
              </c:forEach>		
			
	     </section>
	     
	     
	     <section>
	     
	      <!-- Inicio Modal Excluir -->
	      
		<div class="modal fade" id="exluirUsuario" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <h5 class="modal-title" id="identificador"></h5>
		      <div class="modal-body">
		        <p>Clique em <strong>SIM</strong>, para confirmar!</p>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Não</button>
		        <button  onclick="removerUsuarioModal();" type="button" class="btn btn-danger">Sim</button>
<%--  <a href="${pageContext.request.contextPath}/usuarioController?id=${u.id}&action=deletar" type="button" class="btn btn-danger">Sim</a> --%>
		      </div>
		      
		      
		      <!-- Inicio Modal Visualizar -->
		<div class="modal fade" id="visualizarUsuario" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="visualizarUsuario"></h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		      	<form>
		          <div class="form-group">
		            <label for="nome" class="col-form-label">Nome:</label>
		            <input  disabled="disabled" type="text" class="form-control" id="nome">
		          </div>
		          
		          
		          
		          
		          
		          <div class="form-group">
		            <label for="login" class="col-form-label">Login:</label>
		            <input disabled="disabled" type="text" class="form-control" id="login">
		          </div>
		          
		           <div class="form-group">
		            <label for="senha" class="col-form-label">Senha:</label>
		            <input  disabled="disabled" type="text" class="form-control" id="senha">
		          </div>
		          
		           <div class="form-group">
		            <label for="administrador" class="col-form-label">Administrador:</label>
		            <input  disabled="disabled" type="text" class="form-control" id="administrador">
		          </div>
		          
		           <div class="form-group">
		            <label for="ativo" class="col-form-label">Ativo:</label>
		            <input  disabled="disabled" type="text" class="form-control" id="ativo">
		          </div>
		          
		          </div>
		          
		          <div class="modal-footer">
		          
		          	<button type="button" data-dismiss="modal" class="btn btn-primary">Fechar</button>
		      		
		      	</div>
		      
     	
     </section>
   
</jsp:attribute>

</mt:admin_tamplate>



<script>

function excluir(id,nome){
	$('#exluirUsuario').on('show.bs.modal', function (event) {
	  var modal = $(this)
	  modal.find('.modal-title').text('Desenja remover o Sr. ' + nome +'?')
	  modal.find('#identificador').text(id)
	})
	console.log('chamou >>> ' + nome)
	console.log('chamou >>> ' + id)
}

function removerUsuarioModal(id){
	var id = document.querySelector("#identificador")
	console.log(id)
}

$('#visualizarUsuario').on('show.bs.modal', function (event) {
	  
var button = $(event.relatedTarget) 
var usuarioVisualizar = button.data("whatever")
console.log(usuarioVisualizar)
var format = '{"'+usuarioVisualizar.slice(8,-1).replace(/ /g,"").replace(/=/g,'":"').replace(/,/g,'","')+'"}'
var obj = JSON.parse(format)
console.log(obj)
var modal = $(this)
console.log(obj.nome)
modal.find('.modal-title').text('Dados do Usuário Sr. ' + obj.nome)
	  
	})




	




	
	
</script>
