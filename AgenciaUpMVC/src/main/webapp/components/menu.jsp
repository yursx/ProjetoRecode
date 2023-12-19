<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8" />

<div class="container">
	<div class="topnav responsive nav-container" id="myTopnav">
		<a class="img"><img id="logo" src="./assets/img/logo.png" alt="agenciadeviagens" /></a>
		<a class="nav-link active" aria-current="page" href="<%=request.getParameter("home")%>">Home</a>
		<a class="nav-link" href="<%=request.getParameter("cliente")%>">Clientes</a>
		<a class="nav-link" href="<%=request.getParameter("cadastro")%>">Cadastro</a>
		<a class="nav-link" href="<%=request.getParameter("passagens")%>">Passagens</a>
	</div>
</div>