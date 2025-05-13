<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Soccer Shoes Login</title>
		<link href="css/estilo_login.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<main>
		     <header>
		       <h1>E-commerce</h1>
		       <h2 class="destacado">Moda casual sostenible</h2>
		       <h4 id="favorito">Consumir la moda de manera consciente e intencionada</h4>
		     </header>
		     <nav>
		       <a href="consulta.jsp">Ver Productos</a>
		       <a href="categoria.jsp">Buscar Por Categoria</a>
		       <a href="login.jsp">Login</a>
		     </nav>
		     <div class="agrupar">
		       <section> 
		         <h2>Login del sistema</h2>
		         <form action ="validarLogin.jsp" method="post">
			          <table border="1">
						<tr> <td>Correo Electronico</td> <td><input type="email" id="email" name="usuario" placeholder="usuario@nombreProveedor.dominio" required />*</td> </tr>
						<tr> <td>Clave</td> <td> <input type="password" id="clave" name="clave" required/></td></tr>
						<tr> <td colspan="2">*Campo Obligatorio</td></tr>
						<tr><td><input type ="submit" name="btnEnviar" id="btnEnviar" value="Enviar regitro"/></td><td> <input type ="reset"/></td></tr>
			          </table>
          		</form>
          		<a href=registro.jsp> Registrar</a>
		      </section>
		      <aside>
		        <a href="https://www.linkedin.com/in/sebastian-tipantu%C3%B1a-bb611235a/">Ver más información sobre los desarrolladores   
				</a> <br/>
				<iframe src="https://www.google.com/maps/d/u/0/embed?mid=13sZXbrb9_stTOxckKMGTwOWKAFjhAxo&ehbc=2E312F" width="160" height="120"> 
				</iframe>
		      </aside>
		   </div>
		   <footer>
		      <ul>
		         <li>Facebook</li>
		         <li>Instagram</li>
		         <li>Tiktok</li>
		     </ul>
		   </footer>
		</main>

	</body>
</html>