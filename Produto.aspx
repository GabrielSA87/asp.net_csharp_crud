<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Produto.aspx.cs" Inherits="Produto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet.less" />
    <style type="text/css">
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="txtLabel" runat="server" Font-Bold="False" Font-Size="Larger" Text="Cadastro de Produtos"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnVoltar" runat="server" OnClick="btnVoltar_Click" Text="Voltar" CssClass="botaovoltar" />
            <br />
        </div>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="ID:" Width="120px"></asp:Label>
        <asp:TextBox ID="txtID" runat="server" Width="85px"></asp:TextBox>
        &nbsp;&nbsp;
            <asp:Button ID="btnCarregar" runat="server" OnClick="btnCarregar_Click" Text="Carregar" CssClass="botaocarregar" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Nome:" Width="120px"></asp:Label>
        <asp:TextBox ID="txtNome" runat="server" Width="365px"></asp:TextBox>
        &nbsp;&nbsp; <asp:Button ID="btnLimpar" runat="server" Text="Limpar" Height="25px" OnClick="btnLimpar_Click" CssClass="botaolimpar" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Descricão:" Width="120px"></asp:Label>
        <asp:TextBox ID="txtDescricao" runat="server" Height="80px" TextMode="MultiLine" Width="420px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Preco de Custo:" Width="120px"></asp:Label>
        <asp:TextBox ID="txtPrecoCusto" runat="server" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Preco de Venda:" Width="120px"></asp:Label>
        <asp:TextBox ID="txtPrecoVenda" runat="server" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Quantidade:" Width="120px"></asp:Label>
        <asp:TextBox ID="txtQuantidade" runat="server" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Uni. de Medida:" Width="120px"></asp:Label>
        <asp:TextBox ID="txtUniMedida" runat="server" Width="50px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Categoria:" Width="120px"></asp:Label>
        <asp:DropDownList ID="ddlCategoria" runat="server" Width="250px">
        </asp:DropDownList>
        <br />
        <p style="margin-left: 440px">
            <asp:Button ID="btnDeletar" runat="server" OnClick="btnDeletar_Click" Text="Deletar" CssClass="botaodeletar" />
            &nbsp;&nbsp;
            <asp:Button ID="btnGravar" runat="server" Text="Gravar" OnClick="btnGravar_Click" CssClass="botaogravar" />
            </p>
        <asp:GridView ID="gridProdutos" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="530px" OnSelectedIndexChanged="gridProdutos_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="Selecionar" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </form>
</body>
</html>
