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
			    	<tr> <td>Nombre y Apellidos</td> <td> <input type = "text" name ="usNombre" required/>*</td></tr>
			    	<tr> <td>Cédula</td> <td> <input type = "text" name ="usCedula" maxlength="10" required/>*</td></tr>
			    	<tr> <td>Tipo de perfil</td> <td><select name="cmbusPerfil"> 
														<option value="1">Administrador</option>
														<option value="3">Vendedor</option>
													</select></td></tr>
			    	<tr> <td>Estado Civil</td> <td><select name="cmbusCivil"> 
														<option value="2">Soltero</option>
														<option value="1">Casado</option>
														<option value="3">Divorciado</option>
														<option value="4">Viudo</option>
													</select></td></tr>
					<tr> <td>Correo Electronico</td> <td><input type="email" id="email" name="usEmail" placeholder="usuario@nombreProveedor.dominio" required />*</td> </tr>
			    	<tr><td><input type = "submit" name = "btnEnviar" id = "btnEnviar" value = "Enviar registro"/></td> <td><input type = "reset"/></td></tr>
			    </table>
			</form>
		</section>
		
	</body>
</html>