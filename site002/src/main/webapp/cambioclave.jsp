<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Registro de usuario</title>
		<link href="css/estilo_gestionU.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<header>
			<h1>Registro Nuevo Usuario</h1>
		</header>
		
		<section>
			<form action = "nuevoUsuario.jsp" method = "post">
			    <table border = "1"> 
			    	<tr> <td>Clave anterior</td> <td> <input type = "text" name ="aClave" required/>*</td></tr>
			    	<tr> <td>Clave Nueva</td> <td> <input type = "text" name ="nClave" required/>*</td></tr>
			    	<tr> <td>Repetir Clave</td> <td> <input type = "text" name ="rnClave" required/>*</td></tr>
			    	<tr><td><input type = "submit" name = "btnEnviar" id = "btnEnviar" value = "Enviar registro"/></td> <td><input type = "reset"/></td></tr>
			    </table>
			</form>
		</section>
		
	</body>
</html>