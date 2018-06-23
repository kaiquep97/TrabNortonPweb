<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lista.aspx.cs" Inherits="WebApplication1.lista" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="Estilos/mainpage.css" />
    <link rel="stylesheet" type="text/css" href="Estilos/menu.css" />
    <link rel="stylesheet" type="text/css" href="Content/bootstrap.css" />
	<meta name="keywords" content="programação, web, fatec, ads, css, login, p1" />
	<meta name="author" content="Kaique Pereira, Wagner Souza da Silva, ADS Noturno, Fatec Ipiranga" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="jquery-3.3.1.min.js"></script>
    <script src="mainpage.js"></script>
    <script src="menu.js"></script>
</head>
<body>
    <form runat="server" class="panel-body body">
        
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="BtnNovo" runat="server" CssClass="btn" Text="Adicionar Novo" OnClick="BtnNovo_Click"/>
            <asp:Button ID="BtnSair" runat="server" CssClass="btn" Text="Sair" OnClick="BtnSair_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="cod_cliente" DataNavigateUrlFormatString="crud.aspx?cod_cliente={0}" Text="Editar" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
