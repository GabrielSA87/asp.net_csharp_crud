<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Categoria.aspx.cs" Inherits="_Default" %>

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
            <asp:Label ID="txtLabel" runat="server" Font-Bold="False" Font-Size="Larger" Text="Cadastro de Categorias"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnVoltar" runat="server" OnClick="btnVoltar_Click" Text="Voltar" CssClass="botaovoltar" />
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
        <p style="height: 25px; margin-left: 440px; margin-bottom: 0px">
            <asp:Button ID="btnDeletar" runat="server" OnClick="btnDeletar_Click" Text="Deletar" CssClass="botaodeletar" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnGravar" runat="server" Text="Gravar" OnClick="btnGravar_Click" CssClass="botaogravar" />
            </p>
        <br />
        <asp:GridView ID="gridCategoria" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="530px" OnSelectedIndexChanged="gridCategoria_SelectedIndexChanged">
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
