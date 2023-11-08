<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Agência up</title>

    <link rel="stylesheet" href="assets/css/style.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  </head>
  <body>

    <!-- inicio navbar -->
    <nav class="navbar navbar-expand-md navbar-light bg-light px-3 box-shadow sticky-md-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="#" alt="Agência Up">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>    
        </div>
        <div class="collapse navbar-collapse ps-3" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                    <a class="nav-link" href="cliente">Cliente</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"  href="views/clientes/create.jsp">Cadastro</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="passagens.html">Passagens</a>
                </li>
            </ul>
        </div>
    </nav>
      <!-- fim navbar -->

    <!-- incio do carousel -->
    <section class="container-fluid">
      <div class="row bg-dark text-white">
      
        <div class="col-lg-7 p-0">
          <div id="carouselCidades" class="carousel slide" data-bs-ride="true">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselCidades" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselCidades" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselCidades" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="assets/img/1.jpeg" class="d-block w-100" alt="paisagem">
                <div class="carousel-caption d-none d-md-block">
                </div>
              </div>
              <div class="carousel-item">
                <img src="assets/img/2.jpeg" class="d-block w-100" alt="paisagem">
                <div class="carousel-caption d-none d-md-block">
                </div>
              </div>
              <div class="carousel-item">
                <img src="assets/img/3.jpeg" class="d-block w-100" alt="paisagem">
                <div class="carousel-caption d-none d-md-block">
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselCidades" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselCidades" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
        </div>


        <div class="col-lg-5 text-center p-4 align-self-center">
          <h1 class="display-4">Realize a viagem dos seus sonhos!</h1>
          <p class="lead d-none d-md-block">Encontre os melhores pacotes!</p>
          <br>
          <form action="">
            <div class="input-group mb-3">
              <input type="text" class="form-control" placeholder="Digite um Destino" aria-label="Digite um Destino" aria-describedby="button-addon2">
              <button class="btn btn-primary" type="button" id="button-addon2">Buscar</button>
            </div>
          </form>
        </div>
      </div>
    </section>
      <!--fim do carousel -->
      

    <section id="home-quote" class="p-md-5">
      <blockquote class="blockquote text-center text-white p-md-5 p-3">
        <p class="display-4">
          <em>"A felicidade não está na estrada que leva a algum lugar. A felicidade é a própria estrada."</em>
        </p>
        <footer  class="blockquote-footer text-white">Bob Dylan</footer>
      </blockquote>
    </section>


   <footer class="bg-dark text-white text-center py-3">
		<b>&copy; 2023 - Agência Up</b>
	</footer>


