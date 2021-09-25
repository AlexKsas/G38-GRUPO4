<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<!-- paquete de caracteres -->
		<meta charset="utf-8">
		<!-- Tamaño de la pantalla -->
		<meta name="viewport" content="width=device-width">
		<!-- titulo de la pestaña -->
		<title>Insertando usuario</title>
		<!-- bootstrap-->
		<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
			crossorigin="anonymous">
		
		<!-- font awesome -->
		<link rel="stylesheet"
			href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
			integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
			crossorigin="anonymous">
		
		<!-- Cargando mi hoja de estilo -->
		<link href="style.css" rel="stylesheet" type="text/css" />
		<link href="menu.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
<!-- head  -->
	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand links" href="index.html"><i
				class="fas fa-fish"></i>Tienda J a la 4</a>
		</div>
	</nav>
<!-- head  -->
	<div class="container">
		<div class="row">
		<div class="col-md-3 col-lg-3 col-sm-2 ">
		<nav class="menus ">
	      <div class="container">
	        <a class="navbar-brand links" href="listausuarios.jsp">
	        <i class="fas fa-users"></i> Usuarios</a> 
	        <a class="navbar-brand links" href="listausuarios.jsp">
	        <i class="fas fa-address-book"></i> Clientes</a>
	        <a class="navbar-brand links" href="listausuarios.jsp">
	        <i class="fas fa-truck"></i> Proveedores</a>
	        <a class="navbar-brand links" href="listausuarios.jsp">
	        <i class="fas fa-apple-alt"></i> Productos</a>
	        <a class="navbar-brand links" href="listausuarios.jsp">
	        <i class="fas fa-money-check-alt"></i> Ventas</a>
	        <a class="navbar-brand links" href="listausuarios.jsp">
	        <i class="fas fa-clipboard-list"></i> Reportes</a>
	      </div>
	    </nav>
		</div>
		<div class="col-md-6 col-lg-6 col-sm-4 ">
		<!-- contenido  -->
		<nav class="menus ">
			<div class="container">
				<div style="padding-left: 5px;">
			
					<h1><i class="fas fa-list-ol musuarios"></i> Tabla de usuarios</h1>
					<div class="container">
						<div class="row">
							<!--  Aqui es donde se autogenera la tabla basado en el script -->
							<div class="col align-self-center" id="usuariosinfo">
							
							</div>
			
						</div>
					</div>
				</div>
			</div>
		</nav>
		<!-- contenido  -->
	</div>
	    
  </div>
	</body>
	
<!-- Footer -->
	<footer id="footer">
	  <a><b>Contáctanos</b></a>
	  <a>(+57) 319 333333</a>
	  <p>
	  <a><b>Créditos</b></a>
	  <a>login realizado por Equipo4 Grupo38 | Todos los derechos reservadors 2021®</a>   
	  <a href="https://www.youtube.com/watch?v=DT8FE9_u9MU" class="whatsapp" target="_blank"> <i class="fa fa-whatsapp whatsapp-icon"></i></a>
	</footer>
<!-- Footer -->
	
</html>