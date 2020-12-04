using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Produto : System.Web.UI.Page
{
    ProdutoBLL objProduto = new ProdutoBLL();
    CategoriaBLL objCategoria = new CategoriaBLL();

    protected void Page_Load(object sender, EventArgs e)
    {
        CarregarCategorias();
        CarregarGridView();
    }

    public void CarregarCategorias()
    {
        ddlCategoria.DataSource = objCategoria.RetCategoriasProdutos();
        ddlCategoria.DataValueField = "id";
        ddlCategoria.DataTextField = "nome";
        ddlCategoria.DataBind();
    }

    public void CarregarGridView()
    {
        gridProdutos.DataSource = objProduto.RetListarProdutos();
        gridProdutos.DataBind();
    }

    protected void btnGravar_Click(object sender, EventArgs e)
    {
        objProduto.Nome = txtNome.Text;
        objProduto.Descricao = txtDescricao.Text;
        objProduto.Preco_Custo = decimal.Parse(txtPrecoCusto.Text);
        objProduto.Preco_Venda = decimal.Parse(txtPrecoVenda.Text);
        objProduto.Quantidade = double.Parse(txtQuantidade.Text);
        objProduto.Unidade_Medida = txtUniMedida.Text;
        objProduto.Categoria_ID = int.Parse(ddlCategoria.SelectedValue.ToString());

        if(String.IsNullOrEmpty(txtID.Text))
        {
            objProduto.InserirProduto();
        }
        else
        {
            objProduto.AlterarProduto(txtID.Text);
        }

        LimparForm();
        CarregarGridView();
    }

    protected void btnCarregar_Click(object sender, EventArgs e)
    {
        CarregarProduto();
    }

    private void CarregarProduto()
    {
        DataTable data = objProduto.CarregarProdutoById(txtID.Text);
        txtNome.Text = data.Rows[0]["nome"].ToString();
        txtDescricao.Text = data.Rows[0]["descricao"].ToString();
        txtPrecoCusto.Text = data.Rows[0]["preco_custo"].ToString();
        txtPrecoVenda.Text = data.Rows[0]["preco_venda"].ToString();
        txtQuantidade.Text = data.Rows[0]["quantidade"].ToString();
        txtUniMedida.Text = data.Rows[0]["unidade_medida"].ToString();
        ddlCategoria.SelectedValue = data.Rows[0]["categoria_id"].ToString();
    }

    protected void btnDeletar_Click(object sender, EventArgs e)
    {
        objProduto.DeletarProduto(txtID.Text);
        LimparForm();
        CarregarGridView();
    }

    protected void btnLimpar_Click(object sender, EventArgs e)
    {
        LimparForm();
    }

    private void LimparForm()
    {
        txtID.Text = String.Empty;
        txtNome.Text = String.Empty;
        txtDescricao.Text = String.Empty;
        txtPrecoCusto.Text = String.Empty;
        txtPrecoVenda.Text = String.Empty;
        txtQuantidade.Text = String.Empty;
        txtUniMedida.Text = String.Empty;
    }

    protected void btnVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }

    protected void gridProdutos_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtID.Text = gridProdutos.SelectedRow.Cells[1].Text;
        CarregarProduto();

    }
}