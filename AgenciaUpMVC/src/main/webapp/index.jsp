<!doctype html>
<html lang="pt-br">

<head>
  <title>Agência UP </title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.0-beta1 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
    integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  <link rel="stylesheet" href="assets/css/style.css">
</head>

<body class="bg-white">
  <div class="home">
    <div id="navbar">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <img src="#" alt="" width="10%" height="auto" class="d-inline-block align-text-top">
          <a class="navbar-brand" href="index.html"></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end m-4" id="navbarNavDropdown">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="/cliente">Cliente</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href"/cadastro">Cadastro</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/passagens">Passagens</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <br> <br>
      <main>
        
    <div class="row  p-2 m-0  text-success text-center bg-white">
      <p class="alinhamento">
      <h1> <strong>BEM VINDOS A AGÊNCIA UP </strong></h1>
      </p>
    </div>
    <div class="container">
      <div class="row border-3 p-3 bg-light row-cols-2">
        <div class="col">
          <label for="exampleDataList" class="form-label text-center fs-5">Origem</label>
          <input class="form-control col-md-2" list="datalistOptions" id="exampleDataList"
            placeholder="Digite sua origem">
        </div>
        <div class="col"><label for="data" class="form-label text-center fs-5 ">Data</label>
          <input type="date" name="data" id="data" class="form-control" required>
        </div>
        <div class="col"><label for="exampleDataList" class="form-label text-center fs-5">Destino</label>
          <input class="form-control col-md-2" list="datalistOptions" id="exampleDataList"
            placeholder="Digite seu destino">
        </div>
        <div class="col"><label for="data" class="form-label text-center fs-5 "> Data </label>
          <input type="date" name="data" id="data" class="form-control" required>
        </div>
        <div class="col"><label for="exampleDataList" class="form-label text-center fs-5">Nome</label>
          <input class="form-control col-md-2" list="datalistOptions" id="exampleDataList"
            placeholder="Digite seu nome">
        </div>
        <div class="col"><label for="exampleDataList" class="form-label text-center fs-5">E-mail</label>
          <div class="input-group flex-nowrap"><span class="input-group-text" id="addon-wrapping">@</span>
            <input type="text" class="form-control" placeholder="Username" aria-label="Username"
              aria-describedby="addon-wrapping">
          </div> <br> <br>
          <div class="col">
            <a class="btn btn-info" href="cadastro.html" role="button">Enviar</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
  <br> <br>
  <div class="row m-5 text-center m-auto text-success">
    <p class="destino">
    <h2>
     <strong>VIAGENS NACIONAIS</strong> 
    </h2>
    </p>
  </div>
  <div class="row m-5">
    <div class="col-lg-4 col-md-6 col-sm-12">
      <div class="card" style="width: 18rem;">
        <img src="assets/imagens/rj.jpeg" class="card-img-top" alt="Rio de Janeiro">
        <div class="card-body">
          <h5 class="card-title">Rio de janeiro </h5>
          <p class="card-text"> Conheça a cidade maravilhosa e seus encantos! </p>
          <a href="contato.html" class="btn btn-info"> Saiba mais </a>
        </div>
      </div>

    </div>
    <div class="col-lg-4 col-md-6 col-sm-12">
      <div class="card" style="width: 18rem;">
        <img src="assets/imagens/sp.jpeg" class="card-img-top" alt="Jericoacora">
        <div class="card-body">
          <h5 class="card-title">São Paulo </h5>
          <p class="card-text"> Conheça a cidade que respira cultura e arte!</p>
          <a href="contato.html" class="btn btn-info"> Saiba mais </a>
        </div>
      </div>

    </div>
    <div class="col-lg-4 col-md-6 col-sm-12">
      <div class="card" style="width: 18rem;">
        <img src="assets/imagens/minas gwerais.jpeg" class="card-img-top" alt="maceio">
        <div class="card-body">
          <h5 class="card-title"> Minas Gerais </h5>
          <p class="card-text"> Aproveite sua viagem em MG com Passeio incriveis!</p>
          <a href="contato.html" class="btn btn-info">Saiba mais</a>
        </div>
      </div>
    </div>
  </div>
  <div class="row text-center  text-success">
    <p class="destino">
    <h2>
      <strong>VIAGENS INTERNACIONAIS</strong> 
    </h2>
    </p>
  </div>
  <div class="row m-5">
    <div class="col-lg-4 col-md-6 col-sm-12">
      <div class="card" style="width: 18rem;">
        <img src="assets/imagens/china.jpeg" class="card-img-top" alt="Rio de Janeiro">
        <div class="card-body">
          <h5 class="card-title"> China </h5>
          <p class="card-text"> Planeje a viagem dos sonhos de seus filhos! </p>
          <a href="contato.html" class="btn btn-info"> Saiba mais </a>
        </div>
      </div>

    </div>
    <div class="col-lg-4 col-md-6 col-sm-12">
      <div class="card" style="width: 18rem;">
        <img src="assets/imagens/frança.jpeg" class="card-img-top" alt="Jericoacora">
        <div class="card-body">
          <h5 class="card-title"> França </h5>
          <p class="card-text"> Faça a viagem dos seus sonhos! </p>
          <a href="contato.html" class="btn btn-info"> Saiba mais </a>
        </div>
      </div>

    </div>
    <div class="col-lg-4 col-md-6 col-sm-12">
      <div class="card" style="width: 18rem;">
        <img src="assets/imagens/egito.jpeg" class="card-img-top" alt="maceio">
        <div class="card-body">
          <h5 class="card-title"> Egito </h5>
          <p class="card-text"> Que tal explorar as piramedes!</p>
          <a href="contato.html" class="btn btn-info">Saiba mais</a>
        </div>
      </div>
    </div>
  </div>
  </main>

          <br><br>
    <div class="row m-5 text-center m-auto text-success">
      <p class="destino">
      <h2>
        <strong>CONHEÇA NOSSAS PROMOÇÕES!</strong>
      </h2>
      </p>
    </div>
    <div class="row m-5">
      <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="card" style="width: 18rem;">
          <img src="assets/imagens/espanha.jpeg" class="card-img-top" alt="Chapada dos Veadeiros">
          <div class="card-body">
            <h5 class="card-title">Espanha
            </h5>
            <span class="material-symbols-outlined">
              calendar_month
            </span> 2 ou 4 diárias <br>
            A partir de R$<strike> 2.000</strike> <br>
            <strong>R$ 999,00</strong><br>
            <span class="material-symbols-rounded">
              check_small
            </span>Quarto + café da manhã

            <p class="card-text text-success"> <strong> Cancelamento Gratis! </strong> </p>
            <a href="contato.html" class="btn btn-info"> Comprar! </a>
          </div>
        </div>

      </div>
      <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="card" style="width: 18rem;">
          <img src="assets/imagens/londres.jpeg" class="card-img-top" alt="Barcelona">
          <div class="card-body">
            <h5 class="card-title">Londres </h5>
            <span class="material-symbols-outlined">
              calendar_month
            </span> 7 diárias <br>
            A partir de R$<strike> 5.000</strike> <br>
            <strong>R$ 3.399,00</strong><br>
            <span class="material-symbols-rounded">
              check_small
            </span>Quarto + Passagem aérea

            <p class="card-text text-success"> <strong> Cancelamento Gratis! </strong> </p>
            <a href="contato.html" class="btn btn-info">Comprar! </a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="card" style="width: 18rem;">
          <img src="assets/imagens/ny.jpeg" class="card-img-top" alt="Cartagena">
          <div class="card-body">
            <h5 class="card-title"> Nova York </h5>
            <span class="material-symbols-outlined">
              calendar_month
            </span> 6 diárias <br>
            A partir de R$<strike> 5.000</strike> <br>
            <strong>R$ 3.299,00</strong><br>
            <span class="material-symbols-rounded">
              check_small
            </span>Quarto

            <p class="card-text text-success"> <strong> Cancelamento Gratis! </strong> </p>
            <a href="contato.html" class="btn btn-info">Comprar!</a>
          </div>
        </div>
      </div>
    </div>

    <div class="row m-5">
      <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="card" style="width: 18rem;">
          <img src="assets/imagens/brasilia.jpeg" class="card-img-top" alt="Buenos Aires">
          <div class="card-body">
            <h5 class="card-title">Brasilia
            </h5>
            <span class="material-symbols-outlined">
              calendar_month
            </span> 5 diárias <br>
            A partir de R$<strike> 900,00</strike> <br>
            <strong>R$ 399,00</strong><br>
            <span class="material-symbols-rounded">
              check_small
            </span>Quarto

            <p class="card-text text-success"> <strong> Cancelamento Gratis! </strong> </p>
            <a href="contato.html" class="btn btn-info"> Comprar! </a>
          </div>
        </div>

      </div>
      <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="card" style="width: 18rem;">
          <img src="assets/imagens/china.jpeg" class="card-img-top" alt="Arraial">
          <div class="card-body">
            <h5 class="card-title">China </h5>
            <span class="material-symbols-outlined">
              calendar_month
            </span> 9 diárias <br>
            A partir de R$<strike> 4.500</strike> <br>
            <strong>R$ 2.900</strong><br>
            <span class="material-symbols-rounded">
              check_small
            </span>Quarto

            <p class="card-text text-success"> <strong> Cancelamento Gratis! </strong> </p>
            <a href="contato.html" class="btn btn-info"> Comprar! </a>
          </div>
        </div>

      </div>
      <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="card" style="width: 18rem;">
          <img src="assets/imagens/bahia.jpeg" class="card-img-top" alt="bogotá">
          <div class="card-body">
            <h5 class="card-title"> Bahia </h5>
            <span class="material-symbols-outlined">
              calendar_month
            </span> 6 diárias <br>
            A partir de R$<strike> 400,00</strike> <br>
            <strong>R$ 200,00</strong><br>
            <span class="material-symbols-rounded">
              check_small
            </span>Quarto

            <p class="card-text text-success"> <strong> Cancelamento Gratis! </strong> </p>
            <a href="contato.html" class="btn btn-info">Comprar!</a>
          </div>
        </div>
      </div>
    </div>
  
  <footer class="d-block align-items-center justify-content-center m-8 p-3 text-white">
    <p class="" text-right>
      &#9742;+55 (11) 4002-8922 | (11) 97272-7272 <Span> &#9993;aUPAgencia@email.com.br </Span>
      <br><br>

      Agência UP Ltda - Me <br>

      CNPJ: 66.555.555/0001-88 <br>

      Condições Gerais / Contratos <br>

      Política de Privacidade<br>

      Meus Dados Pessoais <br>

      Direitos do Consumidor
    </p>
    <br>
    <div id="maps">
      <p>
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3656.462773112692!2d-46.487001685383284!3d-23.587730668450806!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce672c44fed437%3A0xba7c5a9100bb53b5!2sAvenida%20Aricanduva%2C%208256%20-%20Jardim%20Cinco%20de%20Julho%2C%20S%C3%A3o%20Paulo%20-%20SP%2C%2003930-110!5e0!3m2!1sen!2sbr!4v1656439813784!5m2!1sen!2sbr"
          width="40%" height="150px" style="border:0;" allowfullscreen="" loading="lazy"
          referrerpolicy="no-referrer-when-downgrade"></iframe>
      </p>
    </div>
    <p>
      Av. Aricanduva, 8256 - Lojas 4 e 9 - Jardim Nove de Julho, São Paulo - SP
      CEP: 03951-220

      Endereço de Estacionamento : Rua Quebedo n°50
    </p>
    <div id="rodape">
      <p> &#169; by Yuri Santana </p>
    </div>
  </footer>



  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
    integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
    integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy"
    crossorigin="anonymous"></script>
</body>

</html>