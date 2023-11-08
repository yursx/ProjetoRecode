<!doctype html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="assets/css/styles.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
<title>Agência Up | Cadastrar Cliente</title>
</head>
<body>
	<main>
		
		<jsp:include page="assets/components/menu.jsp">
			<jsp:param name="home" value="./index.jsp" />
			<jsp:param name="clientes" value="cliente" />
			<jsp:param name="cadastro" value="cadastro" />
			<jsp:param name="passagens" value="passagens" />
		</jsp:include>
		
		<div class="container py-5">
            <form action="create.jsp">
	            <h2 class="text-center">Cadastrar</h2>
	            <div class="form-group mb-5">
	             
	            <div class="form-group mb-5">
	                <label for="cpf" class="form-label">
	                    CPF
	                </label>
	                <input type="text" id="cpf" name="cpf" class="form-control" value="" />
	            </div>
	               <label for="email" class="form-label">
	                    Email
	                </label>
	                <input type="email" id="emal" name="email" class="form-control" value="" />
	            </div>
	              <label for="nome" class="form-label">
	                    Nome
	                </label>
	                <input type="text" id="nome" name="nome" class="form-control" value="" />
	            </div>
	               <label for="senha" class="form-label">
	                    Senha
	                </label>
	                <input type="password" id="senha" name="senha" class="form-control" value="" />
	            </div>
	            <div class="form-group mb-3">
	                <label for="telefone" class="form-label">
	                    Telefone
	                </label>
	                <input type="number" id="telefone" name="telefone" class="form-control" value="" />
	            </div>
	            <button type="submit" class="btn btn-primary">
	                Enviar
	            </button>
	            <a href="cadastro" class="btn btn-danger" style="margin-left: 10px">
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