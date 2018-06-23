<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>login - Loja Star Nerd</title>
		<meta charset="utf-8">
		<link rel="Stylesheet" type="text/css" href="Estilos/style.css" />
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
					<form id="frmLogin" runat="server">
						<div>
							<label for="txtEmail">E-mail:</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="input" OnTextChanged="txtEmail_TextChanged" Width="266px"></asp:TextBox>
							<asp:RequiredFieldValidator ID="email" runat="server" ErrorMessage="Digite um E-mail" ForeColor="Red"></asp:RequiredFieldValidator>
							<br />
							<!--<input id="InputEmail" type="email" placeholder="Digite seu endereço de e-mail." width="auto" required>-->
							<asp:RegularExpressionValidator ID="IdEmail" runat="server" ErrorMessage="Digite um E-mail no formato xx@xx.com" ForeColor="Red"></asp:RegularExpressionValidator>
						</div>
						<div>
							<label for="txtSenha">Senha:</label>
                            <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" CssClass="input" Width="272px"></asp:TextBox>
							<!--<input id="InputPassword" type="password" placeholder="&#128273;Digite sua senha." required>-->
						</div>
						<asp:RequiredFieldValidator ID="Senha" runat="server" ErrorMessage="Digite uma Senha válida!" ForeColor="Red"></asp:RequiredFieldValidator>
						<br />
						<br />
						<div>
                            <asp:Button ID="BtnEntrar" runat="server" CssClass="btn1" OnClick="BtnEntrar_Clicked" Text="Entrar" />
                            <br />
							<!--<input type="submit" class="btn1" value="Entrar"/>-->
							<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
						</div>
					</form>
				</div>
			</div>
		</body>
</html>