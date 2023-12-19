<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="./assets/css/style.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<title>Agência Up | Cadastro</title>
</head>
<body>
	<main>
		<header class="header">
			<h1>Cadastro</h1>
		</header>

		<jsp:include page="../../components/menu.jsp">
			<jsp:param name="home" value="./index.jsp" />
			<jsp:param name="clientes" value="cliente" />
			<jsp:param name="passagens" value="passagens" />
			<jsp:param name="cadastro" value="cadastro" />
		</jsp:include>

		<section class="container">

			<div class="p-4">
				<a href="cadastro-getCreate"
					class="btn btn-primary mb-2 botao1"> Novo Cadastro </a>
				<table class="table table-responsive table-hover">
					<thead class="table-dark">
						<tr>
							<th scope="col">id_cliente</th>
							<th scope="col">nome_cliente</th>
							<th scope="col">email_cliente</th>
							<th scope="col">senha_cliente</th>
							<th scope="col">telefone</th>
							<th scope="col">cpf</th>
							<th scope="col">Ações</th>
						</tr>
					</thead>
					<tbody>

						<jstl:forEach items="${listaCadastro}" var="ca">
							<tr>
								<td>${ca.id_cliente}</td>
								<td>${ca.nome_cliente}</td>
								<td>${ca.email_cliente}</td>
								<td>${ca.senha_cliente}</td>
								<td>${ca.telefone}</td>
								<td>${ca.cpf}</td>
								<td>
									<div class="d-flex">
										<a href="cadastro-edit?id=${ca.id}" class="mx-1" title="Editar">
											<i class="ri-file-edit-line"></i>
										</a> 
										<a href="cadastro-delete?id=${ca.id}" class="mx-1" title="Cancelar"
											onclick="return confirm('Deseja excluir o cadastro.')">
											<i class="ri-delete-bin-2-line"></i>
										</a>
									</div>
								</td>
							</tr>
						</jstl:forEach>

					</tbody>
				</table>
			</div>
		</section>
	</main>
	<footer>
	
	</footer>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"></script>
</body>
</html>