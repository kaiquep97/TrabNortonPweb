<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="WebApplication1.cadastro" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Cadastro de novos clientes - Loja Star Nerd</title>
    <link rel="Stylesheet" type="text/css" href="Estilos/style.css" />
    <link rel="Stylesheet" type="text/css" href="Estilos/menu.css" />
	<meta name="keywords" content="programação, web, fatec, ads, css, login, p1" />
	<meta name="author" content="Kaique Pereira, Wagner Souza da Silva, ADS Noturno, Fatec Ipiranga" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(() => {
            $("#menu").load("Menu.aspx");
        });
    </script>
    <script src="Scripts/menu.js"></script>
</head>
		<body>
            <div id="menu">
            </div>

			<div class="page">
				<div class="titulo"><h1>Cadastrar cliente</h1></div>
				<form id="form1" runat="server">
					<br/>
				<p>Informações pessoais:</p>
				<div class="pessoal">
					<label for="InputNome">Nome:</label>
					<!--<input type="text" id="InputNome" placeholder="Digite o nome completo." size="40"><br/><br/>-->
					<asp:TextBox ID="InputNome" runat="server" placeholder="Digite o nome completo." CssClass="pessoal" OnTextChanged="InputNome_TextChanged"></asp:TextBox>
					
					<label for="InputEmail2">E-mail:</label> 
					<!--<input type="text" id="InputEmail2" placeholder="Digite o e-mail para cadastro." size="40" ><br/><br/>-->
					<asp:TextBox ID="InputEmail2" runat="server"  placeholder="Digite o e-mail para cadastro."  CssClass="pessoal"></asp:TextBox>
					
					<label for="InputCPF">CPF:</label> 
					
					<!--<input type="text" id="InputCPF" placeholder="Digite o CPF." size="20" ><br/><br/>-->
					<asp:TextBox ID="InputCpf" runat="server" placeholder="Digite o CPF." CssClass="pessoal"></asp:TextBox>
					
					<label for="InputTel">Telefone:</label> 
					<!--<input type="text" id="InputTel" placeholder="(11) 99999-9999."  size="12" ><br/>-->
					<asp:TextBox ID="InputTel" runat="server" placeholder="(11) 99999-9999." CssClass="pessoal"></asp:TextBox>
				</div>					
				<p>Endereço:</p> 
                <div class="endereco">
                    <label for="InputRua">Rua:</label>
                    <!--<input type="text" id="InputRua" placeholder="Digite o nome da rua." size="40"><br /><br />-->                
					<asp:TextBox ID="InputRua" placeholder="Digite o nome da rua." runat="server" CssClass="pessoal" ></asp:TextBox>
                    
					<label for="InputNumber">Número:</label>
                    <!--<input type="text" id="InputNumber" placeholder="Número." size="4"><br /><br />-->
                    <asp:TextBox ID="InputNumber" placeholder="Número." size="4" runat="server" CssClass="input" Height="18px"></asp:TextBox>
                    <br />
					<label for="InputComplemento">
					Complemento:</label>
                    <!--<input type="text" id="InputComplemento" placeholder="Ex. casa X ou apartamento XX, bloco X." size="30"><br /><br />-->
                    <asp:TextBox ID="InputComplemento" runat="server" placeholder="Ex. casa X ou apartamento XX, bloco X." CssClass="pessoal"></asp:TextBox>
                    
					<label for="InputBairro">Bairro:</label>
                    <!--<input type="text" id="InputBairro" placeholder="Digite o nome do bairro." size="40"><br /><br />-->
					<asp:TextBox ID="TextBox2" runat="server" placeholder="Digite o nome do bairro." CssClass="pessoal"></asp:TextBox>
					
					<label for="InputCep">CEP:</label>
                    <!--<input type="text" id="InputCep" placeholder="Digite os números do CEP." size="30"><br /><br />-->
					<asp:TextBox ID="InputCep" runat="server" CssClass="pessoal"></asp:TextBox>
				</div>
				<div>	
					<label>Cliente Ativo:</label>
					<input type="radio" id="opS" name="ativo"> Sim
					<input type="radio" id="opN" name="ativo" > Não
				</div>				
				<div><br/>
					<!--<button type="submit" class="btn1"  href="lista.html" onclick="validar();">Cadastrar</button>-->
					<asp:Button ID="btn1" class="btn1" runat="server" Text="Cadastrar" />
				</div>						
				</form>
			</div>
		</body>
</html>
