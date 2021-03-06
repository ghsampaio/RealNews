<%@page import="model.Noticia"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Alterar Notícia</title>
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<script src="https://kit.fontawesome.com/96a514acf1.js" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="css/global.css" />
		<link rel="stylesheet" href="css/cadastrar.css" />
	</head>
	<body>
		<%Noticia noticia = (Noticia) request.getAttribute("noticia"); %>
				
		<header>	
			<h1><a href="index.html"><span class="fas fa-globe-americas"></span>RealNews</a></h1>
        <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Noticias</a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="ConsultarNoticias.do">Consultar noticías</a>
          <a class="dropdown-item" href="ListarNoticias.do">Cadastrar noticías</a>
        </div>
		</header>
		
		<section>
			<h2>Alterar Notícia</h2>
			
			<form action="AlterarNoticia.do" method="post">
				<div class="form-group w-25">
					<label for="id">ID</label> <br>
					<input type="text" class="form-control" name="id" value="<%=noticia.getId()%>" readonly />
				</div>
				
				<div class="form-group">
					<label for="titulo">Título</label>
					<input type="text" class="form-control" name="titulo" size="100" maxlength="126" value="<%=noticia.getTitulo()%>" />
				</div>
				
				<div class="form-group">
					<label for="descricao">Descrição</label>
					<input type="text" class="form-control" name="descricao" size="100" maxlength="126" value="<%=noticia.getDescricao()%>" />
				</div>
				
				<div class="form-group">
					<label for="texto">Texto</label>
					<textarea class="form-control" name="texto" cols="15" rows="15"><%=noticia.getTexto()%></textarea>
				</div>
						
				<div class="form-group">
					<input type="submit" class="btn btn-primary" name="btnAlterar" value="Alterar Notícia" />
					<a class="btn btn-danger" href="ListarNoticias.do">Cancelar</a>
				</div>	
			</form>
		</section>
		
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	</body>
</html>