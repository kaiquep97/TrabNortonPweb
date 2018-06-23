<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="Login.aspx.cs" Inherits="WebApplication1.WebForm1" %>

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
<<<<<<< HEAD
							<asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Digite um E-mail" ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
							<br />
							<!--<input id="InputEmail" type="email" placeholder="Digite seu endereço de e-mail." width="auto" required>-->
							<asp:RegularExpressionValidator ID="RegularExpressionValidatorSenhaEmail" runat="server" ErrorMessage="Digite um E-mail no formato xx@xx.com" ForeColor="Red" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
=======
							<br />
>>>>>>> a6c4c3a07b62caa2e813b0c57a8757d6c71ad4d9
						</div>
                        <br />
						<div>
							<label for="txtSenha">Senha:</label>&nbsp;
                            <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" CssClass="input" Width="272px"></asp:TextBox>
						</div>
<<<<<<< HEAD
						<asp:RequiredFieldValidator ID="RequiredFieldValidatorSenha" runat="server" ErrorMessage="Digite uma Senha!" ForeColor="Red" ControlToValidate="txtSenha"></asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator ID="RegularExpressionValidatorSenha" runat="server" ControlToValidate="txtCep" ErrorMessage="Digite 8 numeros!" ForeColor="Red" ValidationExpression="^\d{8}?"></asp:RegularExpressionValidator>
=======
>>>>>>> a6c4c3a07b62caa2e813b0c57a8757d6c71ad4d9
						<br />
						<br />
						<div>
                            <asp:Button ID="BtnEntrar" runat="server" CssClass="btn1" OnClick="BtnEntrar_Clicked" Text="Entrar" />
                            <br />
                            <br />
                            <asp:Button ID="BtnEsqueci" runat="server" OnClick="BtnEsqueci_Click" Text="Esqueci minha senha" />
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
						</div>
					</form>
				</div>
			</div>
		</body>
</html>