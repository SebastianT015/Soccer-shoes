<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="css/estilo_productos.css" rel="stylesheet" type="text/css">
		<title>Insert title here</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
	</head>
	<body>
	
		<header>
			<h1>Consulta de productos</h1>
		</header>
		<nav>
			
		</nav>
		 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
		<div class="agrupar">
			<section >
				<form action="reporteCategoria.jsp" method = "get">
					<div class="mb-3">
					  <label for="nombre" class="form-label">Nombre</label>
					  <input type="text" class="form-control" id="nombre" placeholder="Ingrese su nombre">
					</div>
					<div>
						<label for="categoria" class="form-label">Categoria</label>
						<% 
							Producto pr=new Producto();						
						%>
						<%
							out.print(pr.mostrarCategoria());
						%>
					</div>
						
					<div class="mb-3">
					  <label for="Precio" class="form-label">Precio</label>
					  <input type="text" class="form-control" id="precio" placeholder="Precio">
					</div>
					<div class="mb-3">
					  <label for="cantidad" class="form-label">Cantidad</label>
					  <input type="text" class="form-control" id="cantidad" placeholder="Cantidad">
					</div>
					<div class="mb-3">
					  <label for="foto" class="form-label">Foto</label>
					  <input type="text" class="form-control" id="foto" placeholder="Ingrese la foto"> 
					</div>					  
				</form>
				<%
						out.print(pr.reporteProducto());
					%>
			</section>
		</div>
	</body>
</html>