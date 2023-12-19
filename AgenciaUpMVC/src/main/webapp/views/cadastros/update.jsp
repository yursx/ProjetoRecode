<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" href="./assets/img/book-2-fill.svg" type="image/svg" />
<link rel="stylesheet" href="./assets/css/style.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
<title>Agência Up | Atualizar Cadastro</title>
</head>
<body>
	<main>
		<header class="header">
			<h1>Atualizar Cadastro</h1>
		</header>
		
	<jsp:include page="../../components/menu.jsp">
			<jsp:param name="home" value="./index.jsp" />
			<jsp:param name="clientes" value="cliente" />
			<jsp:param name="passagens" value="passagens" />
			<jsp:param name="cadastro" value="cadastro" />
		</jsp:include>
		
		<div class="container py-3">
           <form action="cadastro-update">
           		<input type="hidden" id="id" name="id" class="form-control" value="${cadastro.id}" />
				<h2 class="text-center">Criar</h2>
				<div class="form-group mb-3">
					<label for="data" class="form-label"> Nome </label> <input
						type="text" id="data" name="data" class="form-control" value="${cadastro.nome_cliente}" />
				</div>

				<div class="form-group mb-3">
					<label for="cadastro" class="form-label"> Cadastro </label> 
					<select id="cadastro" name="cadastro" class="form-control">
						<option value="DEFAULT">${cadastro.nome}</option>
						<jstl:forEach items="${listaClientes}" var="c">
							<option value="${c.id}">${c.nome}</option>
						</jstl:forEach>
					</select>
				</div>
				<div class="form-group mb-3">
					<label for="cliente" class="form-label"> Cliente </label> 
					<select id=""cliente"" name=""cliente"" class="form-control">
						<option value="DEFAULT">${cadastro.id_cliente}</option>
						<jstl:forEach items="${listaClientes}" var="c">
							<option value="${c.id}">${c.nome_cliente}</option>
						</jstl:forEach>
					</select>
				</div>
				
				<button type="submit" class="btn btn-primary">Enviar</button>
				<a href="cadastro" class="btn btn-danger"
					style="margin-left: 10px"> Cancelar </a>
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