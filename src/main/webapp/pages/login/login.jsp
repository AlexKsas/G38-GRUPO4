<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tamaño de la pantalla -->
<meta name="viewport" content="width=device-width">
<title>Tienda J a las 4</title>

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

<!-- Hoja de Styles -->
<link href="../../style/styles.css" rel="stylesheet" type="text/css" />
<link href="login.css" rel="stylesheet" type="text/css" />

</head>

<body>
	<!-- Navbar-->
	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand links" href="../../index.html"> 
			<i class="fas fa-dolly-flatbed"></i> Tienda J a la 4
			</a>
			<a class="navbar-brand links" href="../../index.html"><i class="fas fa-home"></i> Index</a>
		</div>
	</nav>
	<!-- Navbar-->
	<!-- Navbar-->
	<nav class="nav-bar">
		<div class="container-fluid navbarbrand">
			<a class="navbar-brand links titletie" href="../../index.html"><i
				class="title"></i>Tienda J a la 4</a>
		</div>
	</nav>
	<!-- Navbar-->	
	<div>
	<div class="row divdow">
	  <div class="col-md-3 col-lg-3 col-sm-2 "></div>
	  <div class="col-md-6 col-lg-6 col-sm-8  div-form" id="flogin" > 
	    <form class="formlogin">
	      <div class="mb-3">
	        <label for="exampleInputEmail1" class="form-label"> <i class="fa fa-user" aria-hidden="true"></i> Correo Electronico
	        </label>
	        <input class="form-control" id="inputuser" aria-describedby="emailHelp">
	        
	      </div>
	      <div class="mb-3">
	        <label class="form-label" ><i class="fa fa-unlock" aria-hidden="true"></i> Contraseña</label>
	        <input type="password" id="inputpass" class="form-control" >
	      </div>
	      <div class="divbuttons">
	        <button type="submit" class="btn btn-primary btnprimary btnsignin" id="fentrar" onclick="comparar()"><i class="fa fa-sign-in" aria-hidden="true"></i> Ingresar</button>
	       <button  class="btn btn-danger btncancelar"><i class="fa fa-times" aria-hidden="true"></i> Registrar</button>
	        
	      </div>
	    </form>
	    <audio src="ambiente.ogg" autoplay loop></audio>
	    <div id="divslogin">
	      <button type="button" class="btn btn-outline-danger">  <i class="fa fa-envelope" aria-hidden="true"></i>  Entrar con Google</button>
	      <button type="button" class="btn btn-outline-primary"><i class="fa fa-facebook-square" aria-hidden="true"></i>  Entrar con Facebook</button>
	      <button type="button" class="btn btn-outline-dark"><i class="fa fa-comment" aria-hidden="true"></i>  Entrar con discord</button>
	    </div>
	  </div>
	  <div class="col-md-3 col-lg-3 col-sm-2 "></div>
	</div>
	
</div>	
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
	
	<script>
		function comparar() {
			//trayendo texto de input de username
			var x = document.getElementById("inputuser").value;
			//trayendo texto de input de password
			var y = document.getElementById("inputpass").value;
			//url de la api 
			var baseurl = "http://localhost:8080/listarusuarios";
			//creando un objeto de manipulacion de solicitudes
			var xmlhttp = new XMLHttpRequest();
			//abriendo la api
			xmlhttp.open("GET", baseurl, true);
			//funcion interna que compara la información
			xmlhttp.onreadystatechange = function() {
				//si se obtiene un 200 (Conexion correcta)
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
					//convirtiendo JSON en variable javascrip
					var usuarios = JSON.parse(xmlhttp.responseText);
					
					//verificando uno por uno si existe ese usuario
					for (i = 0; i < usuarios.length; i++) {
						
						//imprimiendo en la consola del navegador pata verificar
						console.log(usuarios);
						console.log(x);
						console.log(usuarios[i].usuario);
						console.log(y);
						console.log(usuarios[i].password);
						
						//si el nombre coincide
						if (usuarios[i].usuario === x) {
							//si la clave coincide
							if (usuarios[i].password === y) {
								console.log("si");
								//var element = document.getElementById("error");
								//element.classList.add("visually-hidden");
								document.getElementById("inputuser").value = "";
								document.getElementById("inputpass").value = "";
								window.location.href = "../menu/menu.jsp";
								return;
							} else {
								//si la clave NO coincide
								console.log("error clave");
								var element = document.getElementById("error");
								element.classList.remove("visually-hidden");
								document.getElementById("inputuser").value = "";
								document.getElementById("inputpass").value = "";
								return;
							}
						}
					}
					//Si no existe el usuario
					console.log("no encontrado");
					
					//quitando la capacidad de ocultacion del error para mostrarlo
					var element = document.getElementById("error");
					element.classList.remove("visually-hidden");
					document.getElementById("inputuser").value = "";
					document.getElementById("inputpass").value = "";
					return;
				}
			};
			//ejecutando
			xmlhttp.send();
		}
	</script>

</body>

</html>