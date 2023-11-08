<!doctype html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="assets/css/styles.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
<title>Agência Up | Atualizar Passagens</title>
</head>
<body>
	<main>
		
		<jsp:include page="../../components/menu.jsp">
			<jsp:param name="home" value="../../index.jsp" />
			<jsp:param name="clientes" value="passagens" />
			<jsp:param name="cadastro" value="passagens-create" />
			<jsp:param name="passagens" value="passagens" />
		</jsp:include>
		
		<div class="container py-3">
            <form action="/passagens-update">
	            <h2 class="text-center">Atualizar Passagens</h2>
	            <div class="form-group mb-3">
	             
	            <div class="form-group mb-3">
	                <label for="cpf" class="form-label">
						    id
	                </label>
	                <input type="text" id="id" name="nome" class="form-control" value="@(cliente.id)"readonly />
	            </div>
	                    Data viagem
	                </label>
	                <input type="date" id="date" name="date" class="form-control" value="@(cliente.cpf)" />
	            </div>
	               <label for="date" class="form-label">
	                   Destino viagem
	                </label>
	                <input type="text" id="text" name="text" class="form-control" value="@(cliente.email)" />
	            </div>
	              <label for="destino" class="form-label">
	                    saida viagem
	                </label>
	                <input type="text" id="text" name="text" class="form-control" value="@(cliente.nome)" />
	            </div>
	               <label for="text" class="form-label">
	                    Preço
	                </label>
	                <input type="number" id="number" name="number" class="form-control" value="@(cliente.senha)" />
	            </div>
	            <div class="form-group mb-3">
	                <label for="number" class="form-label">
	            <button type="submit" class="btn btn-primary">
	                Enviar
	            </button>
	            <a href="/passagens-update" class="btn btn-danger" style="margin-left: 10px">
	                Cancelar
	            </a>
            </form>
        </div>
    </main>
    <br>
    <br>
     <br>
    <br>
	<footer class="bg-dark text-white text-center py-3">
		<b>&copy; 2023 - Agência Up</b>
	</footer>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>