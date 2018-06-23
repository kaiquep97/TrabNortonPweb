<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>
<html lang="pt-br">
	<head>
	 <title> Início - Loja Star Nerd</title> 
	  <link  rel="stylesheet" type="text/css" href="Estilos/menu.css" />
	  <meta name="keywords" content="programação, web, fatec, ads, css, login, p1" />
	  <meta name="author" content="Kaique Pereira, Wagner Souza da Silva, ADS Noturno, Fatec Ipiranga" />
	  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	</head>
	<body>
		<ul>
			<li><a href="#">Início</a></li>
			<li class="dropdown">
				<a href="Scripts/WebForms/javascript:mostra()" class="dropbtn">Clientes</a>
				<!--<a href="javascript:void(0)" class="dropbtn">Clientes</a>-->
				<div class="dropdown-content">
					<a href="lista.aspx">Lista</a>
					<a href="crud.aspx">Cadastro</a>
				</div>
			</li>
			<li><a href="#">Sobre nós</a></li>
			<li><a href="login.aspx">Sair</a></li>
		</ul>
	</body>
</html>
