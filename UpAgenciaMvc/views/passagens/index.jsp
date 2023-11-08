
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="assets/css/styles.css" type="text/css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<title>Agência Up | Passagens</title>
</head>
<body>
	<main>

			<jsp:include page="../../components/menu.jsp">
			<jsp:param name="home" value="./index.jsp" />
			<jsp:param name="clientes" value="cliente" />
			<jsp:param name="cadastro" value="cadastro" />
			<jsp:param name="passagens" value="passagens" />
		</jsp:include>

		<section class="container">

			<div class="p-4">
				<a href="passagens-create"
					class="btn btn-primary mb-2 botao1"> Nova Passagem </a>
				<table class="table table-responsive table-hover">
					<thead class="table-dark">
						<tr>
							<th scope="col">idCliente</th>
							<th scope="col">idPassagens</th>
							<th scope="col">saida_viagem</th>
							<th scope="col">data_viagem</th>
							<th scope="col">destino_viagem</th>
							<th scope="col">preco</th>
							<th scope="col">Ações</th>
						</tr>
					</thead>
					<tbody>

						<jstl:forEach items="${listaPassagens}" var="p">
							<tr>
								<td>${p.idCliente}</td>
								<td>${p.idpassagem}</td>
								<td>${p.saida_viagem}</td>
								<td>${p.data_viagemail}</td>
									<td>${p.destino_viagem}</td>
								<td>${p.preco}</td>
								<td>
									<div class="d-flex">
										<a href="passagens-create-id?id=${p.id}" class="mx-1" title="Editar">
											<i class="ri-file-edit-line"></i>
										</a> 
										<a href="passagens-edit?id=${p.idCliente}" class="mx-1" title="Deletar"
											onclick="return confirm('Deseja excluir o cliente ${p.nome}.')">
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
	<footer class="bg-dark text-white text-center py-3">
		<b>&copy; 2023 - Agência Up</b>
	</footer>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"></script>
</body>
</html>