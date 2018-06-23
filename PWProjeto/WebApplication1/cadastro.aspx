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
            $("#menu").load("menu.html");
        });
    </script>
    <script src="menu.js"></script>
</head>
		<body>
            <div id="menu">
            </div>

			<div class="page">
				<div class="titulo"><h1>Cadastrar cliente</h1></div>
				<form action="" method="post" ><br/>
				<p>Informações pessoais:</p>
				<div class="pessoal">
					<label for="InputNome">Nome:</label>
					<input type="text" id="InputNome" placeholder="Digite o nome completo." size="40"><br/><br/>					
					<label for="InputEmail2">E-mail:</label> 
					<input type="text" id="InputEmail2" placeholder="Digite o e-mail para cadastro." size="40" ><br/><br/>
					<label for="InputCPF">CPF:</label> 
					<input type="text" id="InputCPF" placeholder="Digite o CPF." size="20" ><br/><br/>
					<label for="InputTel">Telefone:</label> 
					<input type="text" id="InputTel" placeholder="(11) 99999-9999."  size="12" ><br/>
				</div>					
				<p>Endereço:</p> 
                <div class="endereco">
                    <label for="InputRua">Rua:</label>
                    <input type="text" id="InputRua" placeholder="Digite o nome da rua." size="40"><br /><br />
                    <label for="InputNumber">Número:</label>
                    <input type="text" id="InputNumber" placeholder="Número." size="4"><br /><br />
                    <label for="InputComplemento">Complemento:</label>
                    <input type="text" id="InputComplemento" placeholder="Ex. casa X ou apartamento XX, bloco X." size="30"><br /><br />
                    <label for="InputBairro">Bairro:</label>
                    <input type="text" id="InputBairro" placeholder="Digite o nome do bairro." size="40"><br /><br />
                    <label for="InputCep">Cep:</label>
                    <input type="text" id="InputCep" placeholder="Digite os números do CEP." size="30"><br /><br />
                </div>
				<div>	
					<label>Cliente Ativo:</label>
					<input type="radio" id="opS" name="ativo"> Sim			
					<input type="radio" id="opN" name="ativo" > Não
				</div>				
				<div></br>
					<button type="submit" class="btn1"  href="lista.html" onclick="validar();">Cadastrar</button>
				</div>						
				</form>
			</div>
		</body>
</html>
<script lang="javascript">
function validar(){
	if(InputNome.value.length < 3)
	{
		alert("Informe seu nome completo !");
		InputNome.focus();
		return false;
	}
	if(InputEmail2.value.lenght<6 || InputEmail2.value.indexOf("@") < 1 || InputEmail2.value.lastIndexOf(".") <= InputEmail2.value.indexOf("@"))
	{
		alert("Informe um email no formato valido !");
		InputEmail2.focus();
		return false;	
	}
	if(InputCPF.value < 13)
	{
		alert("Informe um numero de CPF valido !");
		InputCPF.focus;
		return false;
	}
	if(InputTel.value < 11)
	{
		alert("Informe um numero de telefone valido com DDD !");
		InputTel.focus;
		return false;
	}
	if(InputRua.value.length < 2){
		alert("Informe o nome da rua corretamente !");
		InputRua.focus();
		return false;
	}
	if(InputNumber.value == 0)
	{
		alert("Informe o número corretamente !");
		InputNumber.focus();
		return false;
	}
	if(InputBairro.value.length == 0){
		alert("Informe o bairro !");
		InputBairro.focus();
		return false;
	}
	 if (isNaN(InputCep.value)) 
	 {  
	   alert("Digite apenas números do CEP!");  
	   InputCep.focus();  
	   return false;  
	}	
	if(InputCep.value == 0 ){
		alert("Informe o número do CEP !");
		InputCEP.focus();
		return false;
	}
		alert("Cliente cadastrado com sucesso");
	}
</script>
