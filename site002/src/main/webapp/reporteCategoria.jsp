<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Soccer Shoes Categoría</title>
		<link href="css/estilo_categoria.css" rel="stylesheet" type="text/css">
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
			      <%
					Producto pr = new Producto();
		          	int cat = Integer.parseInt(request.getParameter("cmbCategoria"));
		          	String tabla = pr.buscarProductoCategoria(cat);
		          	out.print(tabla);
					%>
		      </section>
		      <aside>
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