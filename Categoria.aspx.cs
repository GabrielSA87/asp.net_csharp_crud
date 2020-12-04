using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    CategoriaBLL objCategoria = new CategoriaBLL();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        CarregarGridView();
    }

    private void CarregarGridView()
    {
        gridCategoria.DataSource = objCategoria.RetCategoriasProdutos();
        gridCategoria.DataBind(); 

    }

    protected void btnGravar_Click(object sender, EventArgs e)
    {
        objCategoria.Nome = txtNome.Text;
        
        if(String.IsNullOrEmpty(txtID.Text))
        {
            objCategoria.InserirCategoria();
        }
        else
        {
            objCategoria.AlterarCategoria(txtID.Text);
        }

        LimparForm();
        CarregarGridView();
    }

    protected void btnCarregar_Click(object sender, EventArgs e)
    {
        CarregarCategoria();
    }

    private void CarregarCategoria()
    {
        DataTable data = objCategoria.CarregarCategoriaById(txtID.Text);
        txtNome.Text = data.Rows[0]["nome"].ToString();
    }

    protected void btnDeletar_Click(object sender, EventArgs e)
    {
        objCategoria.DeletarCategoria(txtID.Text);
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
    }

    protected void btnVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }

    protected void gridCategoria_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtID.Text = gridCategoria.SelectedRow.Cells[1].Text;
        CarregarCategoria();
    }
}