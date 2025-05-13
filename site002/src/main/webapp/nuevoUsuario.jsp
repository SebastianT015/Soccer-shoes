<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.productos.seguridad.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Añadir usuario</title>
		<link href="css/estilo_gestionU.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<header>
			<h1> Bienvenido a la empresa</h1>
		</header>
		<section>
			<p>
				<%
					
					out.print("Su nombre es "+ request.getParameter("usNombre")+"</br>");
					String uNombre = request.getParameter("usNombre");
					String uCedula = request.getParameter("usCedula");
					String uCivil = request.getParameter("cmbusCivil");
					String uPerfil = request.getParameter("cmbusPerfil");
					String Uemail = request.getParameter("usEmail");
					int ucivil = Integer.parseInt(uCivil);
					int uperfil = Integer.parseInt(uPerfil);
					usuarios user = new usuarios(uperfil,uNombre,uCedula,ucivil,Uemail);
					user.ingresarEmpleados();
					
				%>
				<br/> Su número de cédula es:
					<%=uCedula %>
				<br/> Su correo electrónico es:
					<em><%=Uemail %></em>
			</p>
		</section>

	</body>
</html>