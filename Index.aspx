<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LabelMenu" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Text="Sistema de Controle de Estoque"></asp:Label>
            <br />
            <asp:Label ID="LabelMenu0" runat="server" Font-Bold="False" Font-Size="Medium" ForeColor="#999999" Text="Programando em Camadas com ASP.Net em C#"></asp:Label>
        </div>
        <br />
        <br />
        <asp:Button ID="btnProdutos" runat="server" OnClick="btnProdutos_Click" Text="Produtos" />
&nbsp;&nbsp;
        <asp:Button ID="btnCategorias" runat="server" OnClick="btnCategoria_Click" Text="Categorias" />
    </form>
</body>
</html>
