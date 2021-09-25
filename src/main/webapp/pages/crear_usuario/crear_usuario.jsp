<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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

<!-- Style -->
<link href="crear_usuario.css" rel="stylesheet" type="text/css" />

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
	<!-- subNavbar-->
	<nav class="nav-bar">
		<div class="container-fluid navbarbrand">
			<a class="navbar-brand links titletie" href="../../index.html"><i
				class="title"></i>Tienda J a la 4</a>
		</div>
	</nav>
	<!-- subNavbar-->
	<!-- body-->
	<div class="row divdow">
	  <div class="col-md-3 col-lg-3 col-sm-2 "></div>
	  <div class="col-md-6 col-lg-6 col-sm-8 div-form" id="flogin" > 
	    <form class="formlogin">
	      <div class="mb-3">
	        <h1>CREAR USUARIO</h1>
	        <label for="exampleInputEmail1" class="form-label">
	        	<i class="fa fa-user" aria-hidden="true"></i> cedula 
	        </label>
	        <input type="number" class="form-control" aria-describedby="emailHelp">
	      </div>
	      <div class="mb-3">
	        <label for="exampleInputEmail1" class="form-label">
	        	<i class="fa fa-user" aria-hidden="true"></i> email 
	        </label>
	        <input type="email" class="form-control" aria-describedby="emailHelp">
	      </div>
	      <div class="mb-3">
	        <label for="exampleInputEmail1" class="form-label">
	        	<i class="fa fa-user" aria-hidden="true"></i> nombre 
	        </label>
	        <input type="text" class="form-control" aria-describedby="emailHelp">
	        
	      </div>
	      <div class="mb-3">
	        <label for="exampleInputEmail1" class="form-label">
	        	<i class="fa fa-user" aria-hidden="true"></i> password
	        </label>
	        <input type="password" class="form-control" aria-describedby="emailHelp">
	      </div>
	      <div class="mb-3">
	        <label for="exampleInputEmail1" class="form-label">
	        	<i class="fa fa-user" aria-hidden="true"></i> usuario 
	        </label>
	        <input type="text" class="form-control" aria-describedby="emailHelp">
	        
	      </div>      
	      <div class="divbuttons">
	        <button type="submit" class="btn btn-primary btnprimary btnsignin" id="fentrar" >
	        <i class="fa fa-sign-in" aria-hidden="true"></i> Registrar</button>
	       <button  class="btn btn-danger btncancelar"><i class="fa fa-times" aria-hidden="true"></i> Cancelar</button>
	        
	      </div>
	    </form>
	    <audio src="ambiente.ogg" autoplay loop></audio>    
	  </div>
	  <div class="col-md-3 col-lg-3 col-sm-2"></div>
	</div>
	<!-- body-->		
</body>
<!-- footer-->
	<footer id="footer">
	  <a><b>Contáctanos</b></a>
	  <a>(+57) 319 333333</a>
	  <p>
	  <a><b>Créditos</b></a>
	  <a>login realizado por Equipo4 Grupo38 | Todos los derechos reservadors 2021®</a>   
	  <a href="https://www.youtube.com/watch?v=DT8FE9_u9MU" class="whatsapp" target="_blank"> <i class="fa fa-whatsapp whatsapp-icon"></i></a>
	</footer>
<!-- footer-->	
	<script>
		function enviar() {
			var x = document.getElementById("user").value;
			var y = document.getElementById("cedula_usuario").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/listarusuarios', false);
			req.send(null);
			var usuarios=null;
			if (req.status == 200)
				usuarios=JSON.parse(req.responseText);
			  	console.log(JSON.parse(req.responseText));
			  	
			for (i = 0; i < usuarios.length; i++) {
				console.log(usuarios[i].usuario);
				console.log(usuarios[i].cedula_usuario);
				if (usuarios[i].usuario ===x ) {
					console.log(usuarios[i].usuario +" "+x);	
					coincidencia =true
					break;
				}
				
				if (usuarios[i].cedula_usuario ===y ) {
					console.log(usuarios[i].cedula_usuario +" "+y);	
					coincidencia =true
					break;
				}
			}
			console.log(coincidencia);	
			
			if (coincidencia==false){
				var formData = new FormData();
	 			formData.append("cedula_usuario", document.getElementById("cedula_usuario").value);
	 			formData.append("email_usuario", document.getElementById("email_usuario").value);
	 			formData.append("nombre_usuario", document.getElementById("nombre_usuario").value);
	 			formData.append("password",document.getElementById("password").value);
	 			formData.append("usuario",document.getElementById("user").value);
	 			var xhr = new XMLHttpRequest();
	 			xhr.open("POST", "http://localhost:8080/registrarusuario");
	 			
				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");
				
				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("user").value = "";
	 			xhr.send(formData);

			}else{
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("user").value = "";
			}	
		}
	</script>

</html>