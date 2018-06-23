<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lista.aspx.cs" Inherits="WebApplication1.lista" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="Estilos/mainpage.css" />
    <link rel="stylesheet" type="text/css" href="Estilos/menu.css" />
	<meta name="keywords" content="programação, web, fatec, ads, css, login, p1" />
	<meta name="author" content="Kaique Pereira, Wagner Souza da Silva, ADS Noturno, Fatec Ipiranga" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="jquery-3.3.1.min.js"></script>
    <script src="mainpage.js"></script>
    <script src="menu.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
