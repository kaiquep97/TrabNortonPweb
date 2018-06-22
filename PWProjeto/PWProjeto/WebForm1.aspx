<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PWProjeto.WebForm1" %>

<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>login - Loja Star Nerd</title>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="style.css" />
		<meta name="keywords" content="programação, web, fatec, ads, css, login, p1" />
		<meta name="author" content="Kaique Pereira, Wagner Souza da Silva, ADS Noturno, Fatec Ipiranga" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

		<script src="jquery-3.3.1.min.js"></script>
		<script src="login.js"></script>
	</head>
		<body id="b1" class="body">
			<div class="page">
				<div class="titulo"><h1>Login</h1></div>
				<div>
					<form id="frmLogin" method="post" action="mainpage.html">
						<div>
							<label for="InputEmail">E-mail:</label>
							<input id="InputEmail" type="email" placeholder="Digite seu endereço de e-mail." width="auto" required>
						</div>
						<div>
							<label for="InputPassword">Senha:</label>
							<input id="InputPassword" type="password" placeholder="&#128273;Digite sua senha." required>
						</div>
						<div>
							<input type="submit" class="btn1" value="Entrar"/>
						</div>
					</form>
				</div>
			</div>
		</body>
</html>