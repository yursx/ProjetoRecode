<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="./assets/css/style.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"
	rel="stylesheet">
<title>Agencia Up | Passagens</title>
</head>
<body>
	<main>
		<header class="header">
			<h1>Passagens</h1>
		</header>

		<jsp:include page="../../components/menu.jsp">
			<jsp:param name="home" value="./index.jsp" />
			<jsp:param name="clientes" value="cliente" />
			<jsp:param name="passagens" value="passagens" />
			<jsp:param name="cadastro" value="cadastro" />
		</jsp:include>

		<section class="container">

			<div class="p-4">
				<button data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-primary mb-2 botao1"> Nova Passagem </button>
					
				<table class="table table-responsive table-hover">
					<thead class="table-dark">
						<tr>
							<th scope="col">id_passagens</th>
							<th scope="col">id_cliente</th>
							<th scope="col">saida_viagem</th>
							<th scope="col">destino_viagem</th>
							<th scope="col">data_viagem</th>
							<th scope="col">preco</th>
							<th scope="col">Ações</th>
						</tr>
					</thead>
					<tbody>

						<jstl:forEach items="${listaPassagens}" var="l">
							<tr>
								<td>${l.id_passagens}</td>
								<td>${l.id_cliente}</td>
								<td>${l.saida_viagem}</td>
								<td>${l.destino_viagem}</td>
								<td>${l.data_viagem}</td>
								<td>${l.preco}</td>
								<td>
									<div class="d-flex">
										<button data-bs-toggle="modal"
											data-bs-target="#exampleModal${l.id_passagens}" class="mx-1" title="Editar">
											<i class="ri-file-edit-line"></i>
										</button> <a href="passagens-delete?id=${l.id_passagens}" class="mx-1"
											title="Cancelar"
											onclick="return confirm('Deseja excluir o autor ${l.id_cliente}.')">
											<i class="ri-delete-bin-2-line"></i>
										</a>
										
										<!-- Modal -->
										<div class="modal fade" id="exampleModal${l.id_cliente}" tabindex="-1"
											aria-labelledby="exampleModalLabel" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<h1 class="modal-title fs-5" id="exampleModalLabel">Modal
															title</h1>
														<button type="button" class="btn-close" data-bs-dismiss="modal"
															aria-label="Close"></button>
													</div>
													<div class="modal-body">
														<form action="passagens-update">
												            <h2 class="text-center">Atualizar</h2>
												            <input type="hidden" id="id" name="id" class="form-control" value="${l.saida_viagem}" />
												            <div class="form-group mb-3">
												                <label for="nome" class="form-label">
												                    Saida
												                </label>
												                <input type="text" id="nome" name="nome" class="form-control" value="${l.nome}" />
												            </div>
												            
												            <div class="form-group mb-3">
												                <label for="email" class="form-label">
												                    Destino
												                </label>
												                <input type="text" id="destino" name="destino" class="form-control" value="${l.destino_viagem}" />
												            </div>
												            <div class="form-group mb-3">
												                <label for="email" class="form-label">
												                    Data
												                </label>
												                <input type="text" id="number" name="number" class="form-control" value="${l.data_viagem}" />
												            </div>
												            
												            <div class="form-group mb-3">
												                <label for="senha" class="form-label">
												                    Preço
												                </label>
												                <input type="number" id="preco" name="preco" class="form-control" step="0.01" value="${l.preco}" />
												            </div>
												
												            <button type="submit" class="btn btn-primary">
												                Enviar
												            </button>
												            <a href="./passagens" class="btn btn-danger" style="margin-left: 10px">
												                Cancelar
												            </a>
											            </form>
													</div>
													
												</div>
											</div>
										</div>
										
									</div>
								</td>
							</tr>
						</jstl:forEach>

					</tbody>
				</table>
			</div>
		</section>
		
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title fs-5" id="exampleModalLabel">Modal
							title</h1>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form action="passagens-create">
				            <h2 class="text-center">Atualizar</h2>
				            <input type="hidden" id="id" name="id" class="form-control" value="" />
				            <div class="form-group mb-3">
				                <label for="nome" class="form-label">
				                    Nome
				                </label>
				                <input type="text" id="nome" name="nome" class="form-control" value="" />
				            </div>
				            
				            <div class="form-group mb-3">
				                <label for="email" class="form-label">
				                    Destino/Saida
				                </label>
				                <input type="text" id="destino" name="destino" class="form-control" value="" />
				            </div>
				            <div class="form-group mb-3">
				                <label for="email" class="form-label">
				                    Data
				                </label>
				                <input type="number" id="data" name="number" class="form-control" value="" />
				            </div>
				            
				            <div class="form-group mb-3">
				                <label for="senha" class="form-label">
				                    Preço
				                </label>
				                <input type="number" id="preco" name="preco" class="form-control" step="0.01" value="" />
				            </div>
				
				            <button type="submit" class="btn btn-primary">
				                Enviar
				            </button>
				            <a href="./passagens" class="btn btn-danger" style="margin-left: 10px">
				                Cancelar
				            </a>
			            </form>
					</div>
					
				</div>
			</div>
		</div>

	</main>
	<footer>
	
	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"></script>
</body>
</html>