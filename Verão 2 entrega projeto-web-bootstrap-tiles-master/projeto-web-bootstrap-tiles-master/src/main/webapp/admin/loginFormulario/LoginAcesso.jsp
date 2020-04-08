<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <title>Login</title>

	<link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />
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
  
  <body class="text-center">
    <form class="form-signin">
		  <h1 class="h3 mb-3 font-weight-normal">Agenda de Contato</h1>
		  <label for="email" class="sr-only">Email</label>
		  <input type="email" id="email" name="email" class="form-control" placeholder="login" required autofocus>
		    <br/>
		  <label for="senha" class="sr-only">Senha</label>
		  <input type="password" id="senha" name="senha" class="form-control" placeholder="Senha" required>
		  <input id="btnLogar" class="btn btn-lg btn-primary btn-block" type="submit" value="Entrar">

		  <a href="${pageContext.request.contextPath}/admin/listaUsuarioCadast/UsuCadastr.jsp">Cadastre-se aqui</a>
	</form>
</body>
	
	
	<script>
		const valida = () => {
			
			event.preventDefault();
		    let email = document.getElementById("email").value;
		    let senha = document.getElementById("senha").value;
		    
		    if(email === '' && senha === ''){
			    alert('Preencha os Campos!');
			    
		    }
		    if(email === 'lucas@gmail.com' && senha === '123'){
		    	alert('Acesso Liberado com Sucesso');		    
			    window.location.href ='http://localhost:8080/agenda-acme/index.jsp';
		    }
		    else{
		    	alert('Erro! Tente Novamente! ');
		    	window.location.href ='http://localhost:8080/agenda-acme/login.jsp';
			    
		    }
		  }
  
	</script>
	
</body>


</html>

</html>

