<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"	import = "com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="css/estilo.css" rel="stylesheet" type="text/css">
		<title>Bitacora</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
	</head>
	<body>
		<main>
			<header>
				<h1>Bitacora de productos</h1>
			</header>
			<nav>
			</nav>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
			<div class = "agrupar">
				<%
					Producto pr = new Producto();
					out.print(pr.reporteBitacora());
				%>			
			</div>
		</main>
	</body>
</html>