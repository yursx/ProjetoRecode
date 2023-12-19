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
<title>AgênciaUp | Clientes</title>
</head>
<body>
	<main>
		<header class="header">
			<h1>Clientes</h1>
		</header>
		<jsp:include page="../../components/menu.jsp">
			<jsp:param name="home" value="./index.jsp" />
			<jsp:param name="cliente" value="cliente" />
			<jsp:param name="passagens" value="passagens" />
			<jsp:param name="cadastro" value="cadastro" />
		</jsp:include>

		<section class="container">

			<div class="p-4">
				<a href="./views/clientes/create.jsp"
					class="btn btn-primary mb-2 botao1"> Novo Cliente </a>
				<table class="table table-responsive table-hover">
					<thead class="table-dark">
						<tr>
							<th scope="col">id</th>
							<th scope="col">Nome</th>
							<th scope="col">email</th>
							<th scope="col">Ações</th>
						</tr>
					</thead>
					<tbody>

						<jstl:forEach items="${listaCliente}" var="c">
							<tr>
								<td>${c.id}</td>
								<td>${c.nome}</td>
								<td>${c.email}</td>
								<td>
									<div class="d-flex">
										<a href="cliente-edit?id=${c.id}" class="mx-1" title="Editar">
											<i class="ri-file-edit-line"></i>
										</a> 
										<a href="usuario-delete?id=${c.id}" class="mx-1" title="Cancelar"
											onclick="return confirm('Deseja excluir o autor ${c.nome}.')">
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
		  <p> &#169; by Yuri Santana </p>
	</footer>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"></script>
</body>
</html>