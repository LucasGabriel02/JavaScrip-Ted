<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding= "UTF-8" %>
<html lang="en">



  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <title>Login</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/sign-in/">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/admin/css/bootstrap.min.css"/>
	<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }
      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    
    <link href="${pageContext.request.contextPath}/assets/admin/signin.css" rel="stylesheet">
    
  </head>

    <form class="form-signin" method="post" action="EmpresaController" >
		  <h1 class="h3 mb-3 font-weight-normal"> Agenda de Contato</h1>
		  
		  
		  <label for="nome" class="sr-only">Nome</label>
		  <input name="nome" type="nome" id="nome" class="form-control" placeholder="Nome" required autofocus>
		   <br> </br>
		  
		  <label for="sobrenome" class="sr-only">Sobrenome</label>
		  <input name="Sobrenome" type="Sobrenome" id="sobrenome" class="form-control" placeholder="Sobrenome" required autofocus>
		   <br> </br>
		  
		  
		  <label for="email" class="sr-only">Email</label>
		  <input name="email" type="email" id="email" class="form-control" placeholder="E-Mail" required autofocus>
		 <br> </br>
		 
		  <label for="senha" class="sr-only">Senha</label>
		  <input name="senha" type="password" id="senha" class="form-control" placeholder="Senha" required>
		  
		  <button ="validar()" class="btn btn-info btn-sm" type="submit"> Cadastrar </button>

		  <tr id="Nome">
		  <tr id="Sobrenome">
		  <tr id="E-Mail">
		  <tr id="Senha">
		  
		  <td>
          <button class="remocao" data-ref="Nome, Sobrenome, E-mail, Senha">Editar</button>
          
          </td>
          </tr>
          </tr>
          </tr>
          </tr>

          <br> </br>
          
          <a href="${pageContext.request.contextPath}/admin/listaUsuario/UsuCadastr.jsp">Click Aqui: Lista de usuarios Cadastrados</a>

		  
      		
	</form>
	
	

	
</body>


</html>

</html>

