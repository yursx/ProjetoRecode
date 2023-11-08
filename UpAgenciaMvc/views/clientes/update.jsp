<!doctype html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="assets/css/styles.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
<title>Agência Up | Atualizar Cliente</title>
</head>
<body>
	<main>
		
	<jsp:include page="assets/components/menu.jsp">
			<jsp:param name="home" value="./index.jsp" />
			<jsp:param name="clientes" value="cliente" />
			<jsp:param name="cadastro" value="cadastro" />
			<jsp:param name="passagens" value="passagens" />
		</jsp:include>
		
		<div class="container py-3">
            <form action="/cliente-update">
	            <h2 class="text-center">Atualizar</h2>
	            <div class="form-group mb-3">
	             
	            <div class="form-group mb-3">
	                <label for="cpf" class="form-label">
						    id
	                </label>
	                <input type="text" id="id" name="nome" class="form-control" value="@(cliente.id)"readonly />
	            </div>
	                    CPF
	                </label>
	                <input type="number" id="cpf" name="cpf" class="form-control" value="@(cliente.cpf)" />
	            </div>
	               <label for="email" class="form-label">
	                    Email
	                </label>
	                <input type="email" id="emal" name="email" class="form-control" value="@(cliente.email)" />
	            </div>
	              <label for="nome" class="form-label">
	                    Nome
	                </label>
	                <input type="text" id="nome" name="nome" class="form-control" value="@(cliente.nome)" />
	            </div>
	               <label for="senha" class="form-label">
	                    Senha
	                </label>
	                <input type="password" id="senha" name="senha" class="form-control" value="@(cliente.senha)" />
	            </div>
	            <div class="form-group mb-3">
	                <label for="telefone" class="form-label">
	                    Telefone
	                </label>
	                <input type="number" id="telefone" name="telefone" class="form-control" value="@(cliente.telefone)" />
	            </div>
	            <button type="submit" class="btn btn-primary">
	                Enviar
	            </button>
	            <a href="/cliente-update" class="btn btn-danger" style="margin-left: 10px">
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