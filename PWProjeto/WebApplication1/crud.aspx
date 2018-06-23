<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crud.aspx.cs" Inherits="WebApplication1.cadastro" %>

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
                    <label for="InputCodigo">Codigo:</label>
                    <asp:TextBox ID="InputCodigo" runat="server" CssClass="input"></asp:TextBox>

                    <asp:Button ID="BtnPesquisar" Text="Pesquisar" runat="server" OnClick="BtnPesquisar_Click" CausesValidation="False" UseSubmitBehavior="False" ValidateRequestMode="Disabled"/>
                    <br />
                    <br />
					<label for="InputNome">Nome:</label>
					<!--<input type="text" id="InputNome" placeholder="Digite o nome completo." size="40"><br/><br/>-->
					<asp:RequiredFieldValidator ID="RequiredFieldValidatorNome" runat="server" ControlToValidate="InputNome" ErrorMessage="Digite o nome!" ForeColor="Red"></asp:RequiredFieldValidator>
					<br />
					<asp:TextBox ID="InputNome" runat="server" placeholder="Digite o nome completo." CssClass="pessoal" OnTextChanged="InputNome_TextChanged"></asp:TextBox>
					
					<label for="InputEmail2">E-mail:</label> 
					<!--<input type="text" id="InputEmail2" placeholder="Digite o e-mail para cadastro." size="40" ><br/><br/>-->
							
							<asp:RequiredFieldValidator ID="email" runat="server" ErrorMessage="Digite um E-mail!" ForeColor="Red" ControlToValidate="InputEmail2"></asp:RequiredFieldValidator>
							<br />
							<asp:RegularExpressionValidator ID="IdEmail" runat="server" ErrorMessage="Digite um E-mail no formato xx@xx.com" ForeColor="Red" ControlToValidate="InputEmail2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
					<asp:TextBox ID="InputEmail2" runat="server"  placeholder="Digite o e-mail para cadastro."  CssClass="pessoal"></asp:TextBox>
					
					<label for="InputCPF">CPF:</label> 
					
					<!--<input type="text" id="InputCPF" placeholder="Digite o CPF." size="20" ><br/><br/>-->
					<asp:RequiredFieldValidator ID="RequiredFieldValidatorCPF" runat="server" ControlToValidate="InputCpf" ErrorMessage="Digite um CPF!" ForeColor="Red"></asp:RequiredFieldValidator>
					<br />
					<asp:RegularExpressionValidator ID="RegularExpressionValidatorCPF" runat="server" ControlToValidate="InputCpf" ErrorMessage="Digite o CPF no formato xxx.xxx.xxx-xx" ForeColor="Red" ValidationExpression="^\d{3}\.\d{3}\.\d{3}-\d{2}$"></asp:RegularExpressionValidator>
					<asp:TextBox ID="InputCpf" runat="server" placeholder="Digite o CPF." CssClass="pessoal"></asp:TextBox>
					
					<label for="InputTel">Telefone:</label> 
					<!--<input type="text" id="InputTel" placeholder="(11) 99999-9999."  size="12" ><br/>-->
					<asp:RequiredFieldValidator ID="RequiredFieldValidatorTel" runat="server" ControlToValidate="InputTel" ErrorMessage="Digite seu Telefone!" ForeColor="Red"></asp:RequiredFieldValidator>
					<br />
					<asp:RegularExpressionValidator ID="RegularExpressionValidatorTel" runat="server" ControlToValidate="InputTel" ErrorMessage="Digite o telefone com DDD no formato (xx)xxxxx-xxxx!" ForeColor="Red" ValidationExpression="^\(\d{2}\)\d{5}-\d{4}$"></asp:RegularExpressionValidator>
					<asp:TextBox ID="InputTel" runat="server" placeholder="(11) 99999-9999." CssClass="pessoal"></asp:TextBox>
				</div>					
				<p>Endereço:</p> 
                <div class="endereco">
                    <label for="InputEndereco">Rua:</label>
                    <!--<input type="text" id="InputRua" placeholder="Digite o nome da rua." size="40"><br /><br />-->                
					<asp:RequiredFieldValidator ID="RequiredFieldValidatorRua" runat="server" ControlToValidate="InputEndereco" ErrorMessage="Digite o nome de sua rua!" ForeColor="Red"></asp:RequiredFieldValidator>
					<asp:TextBox ID="InputEndereco" placeholder="Digite o nome da rua." runat="server" CssClass="pessoal" ></asp:TextBox>
                    
<%--					<label for="InputNumber">Número:</label>
                    <!--<input type="text" id="InputNumber" placeholder="Número." size="4"><br /><br />-->
                    <asp:TextBox ID="InputNumber" placeholder="Número." size="4" runat="server" CssClass="input" Height="18px" Width="44px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Digite o número de sua rua!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br /><br />
					<label for="InputComplemento">
					Complemento:</label>
                    <!--<input type="text" id="InputComplemento" placeholder="Ex. casa X ou apartamento XX, bloco X." size="30"><br /><br />-->
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorComp" runat="server" ErrorMessage="Digite um complemento!" ForeColor="Red" ControlToValidate="InputComplemento"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="InputComplemento" runat="server" placeholder="Ex. casa X ou apartamento XX, bloco X." CssClass="pessoal"></asp:TextBox>
                    
					<label for="InputBairro">Bairro:</label>
                    <!--<input type="text" id="InputBairro" placeholder="Digite o nome do bairro." size="40"><br /><br />-->
					<asp:RequiredFieldValidator ID="RequiredFieldValidatorBairro" runat="server" ErrorMessage="Digite o seu Bairro!" ForeColor="Red" ControlToValidate="InputBairro"></asp:RequiredFieldValidator>
					<asp:TextBox ID="InputBairro" runat="server" placeholder="Digite o nome do bairro." CssClass="pessoal"></asp:TextBox>
					
					<label for="InputCep">CEP:</label>
                    <!--<input type="text" id="InputCep" placeholder="Digite os números do CEP." size="30"><br /><br />-->
					<asp:RequiredFieldValidator ID="RequiredFieldValidatorCep" runat="server" ControlToValidate="InputCep" ErrorMessage="Digite seu CEP!" ForeColor="Red"></asp:RequiredFieldValidator>
					<br />
					<asp:RegularExpressionValidator ID="RegularExpressionValidatorCep" runat="server" ControlToValidate="InputCep" ErrorMessage="Digite seu CEP no formato xxxxx-xxx!" ForeColor="Red" ValidationExpression="^\d{5}-\d{3}$"></asp:RegularExpressionValidator>
					<asp:TextBox ID="InputCep" runat="server" CssClass="pessoal"></asp:TextBox>--%>
				</div>
				<div>	
					<label>Cliente Ativo:</label>
                    <asp:RadioButton ID="opS" Text="Sim" runat="server" GroupName="radio" />
                    <asp:RadioButton ID="opsN" Text="Não" runat="server" GroupName="radio" />
					<%--<input type="radio" id="opS" name="ativo"> Sim
					<input type="radio" id="opN" name="ativo" > Não--%>
				</div>				
				<div><br/>
					<!--<button type="submit" class="btn1"  href="lista.html" onclick="validar();">Cadastrar</button>-->
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
					<asp:Button ID="btnCadastrar" class="btn1" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click"/>
                    <br />
                    <br />
                    <asp:Button ID="BtnAlterar" class="btn1" runat="server" Text="Alterar" OnClick="BtnAlterar_Click"/>
                    <br /><br />
                    <asp:Button ID="BtnExcluir" class="btn1" runat="server" Text="Excluir" OnClick="BtnExcluir_Click"/> 
                    <br /><br />
                    <asp:Button ID="BtnSair"  CausesValidation="False" UseSubmitBehavior="False" ValidateRequestMode="Disabled" class="btn1" runat="server" Text="Sair" OnClick="BtnSair_Click"/>
                    <br /><br />
                    <asp:Button ID="BtnVoltar"  CausesValidation="False" UseSubmitBehavior="False" ValidateRequestMode="Disabled" class="btn1" runat="server" Text="Voltar" OnClick="BtnVoltar_Click"/>
				</div>						
				</form>
			</div>
		</body>
</html>
