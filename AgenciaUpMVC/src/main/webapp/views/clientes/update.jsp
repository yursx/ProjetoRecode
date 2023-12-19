<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="./assets/css/style.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
<title>Ag�nciaUp | Atualizar Cliente</title>
</head>
<body>
	<main>
		<header class="header">
			<h1>Atualizar Cliente</h1>
		</header>
		
		<jsp:include page="../../components/menu.jsp">
			<jsp:param name="home" value="../../index.jsp" />
			<jsp:param name="cliente" value="cliente" />
		</jsp:include>
		
		<div class="container py-3">
            <form action="./cliente-update">
	            <h2 class="text-center">Atualizar</h2>
	            <input type="hidden" id="id" name="id" class="form-control" value="${cliente.id}" />
<!-- 	            <div class="form-group mb-3"> -->
<!-- 	                <label for="nome" class="form-label"> -->
<!-- 	                    id -->
<!-- 	                </label> -->
<%-- 	                <input type="text" id="id" name="id" class="form-control" value="${cliente.id}" readonly/> --%>
<!-- 	            </div> -->
	            <div class="form-group mb-3">
	                <label for="nome" class="form-label">
	                    Nome
	                </label>
	                <input type="text" id="nome" name="nome" class="form-control" value="${cliente.nome}" />
	            </div>
	            
	            <div class="form-group mb-3">
	                <label for="email" class="form-label">
	                    Email
	                </label>
	                <input type="email" id="email" name="email" class="form-control" value="${cliente.email}" />
	            </div>
	            
	            <div class="form-group mb-3">
	                <label for="senha" class="form-label">
	                    Senha
	                </label>
	                <input type="password" id="senha" name="senha" class="form-control" value="${cliente.senha}" />
	            </div>
	
	            <button type="submit" class="btn btn-primary">
	                Enviar
	            </button>
	            <a href="./cliente" class="btn btn-danger" style="margin-left: 10px">
	                Cancelar
	            </a>
            </form>
        </div>
		
    </main>
    
	<footer>
		
	</footer>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>