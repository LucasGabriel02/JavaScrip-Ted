<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usuarios Cadastrados </title>
</head>
<body>

<script type="text/javascript">
    var objNet = new ActiveXObject("WScript.NetWork");
    var strUserName = objNet.UserName;
    var strDomain = objNet.UserDomain;    

    document.getElementsByName('Nome')[0].value = strUserName;

    document.getElementsByName('Sobrenome')[0].value = strUserName;

    document.getElementsByName('E-mail')[0].value = strUserName;
</script>

</body>
</html>