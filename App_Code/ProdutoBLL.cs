using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;

public class ProdutoBLL
{
    public string Nome { get; set; }
    public string Descricao { get; set; }
    public decimal Preco_Custo { get; set; }
    public decimal Preco_Venda { get; set; }
    public double Quantidade { get; set; }
    public string Unidade_Medida { get; set; }
    public int Categoria_ID { get; set; }
    
    DAL objDAL = new DAL();

    public DataTable RetListarProdutos()
    {
        return objDAL.RetDataTable("select * from produto");
    }

    public DataTable CarregarProdutoById(string id)
    {
        return objDAL.RetDataTable("select * from produto where id = " + id);
    }

    public void InserirProduto()
    {
        string sql = "INSERT INTO produto(nome, descricao, preco_custo, preco_venda, quantidade, unidade_medida, categoria_id) VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}')";
        
        sql = String.Format(sql, Nome, Descricao, Preco_Custo, Preco_Venda, Quantidade, Unidade_Medida, Categoria_ID);
        objDAL.ExecutarComandoSQL(sql);
    }

    public void AlterarProduto(string id)
    {
        string sql = "UPDATE produto SET nome='{0}', descricao='{1}', preco_custo='{2}', preco_venda='{3}', quantidade='{4}', unidade_medida='{5}', categoria_id='{6}' WHERE id='{7}'";
        sql = String.Format(sql, Nome, Descricao, Preco_Custo, Preco_Venda, Quantidade, Unidade_Medida, Categoria_ID, id);
        objDAL.ExecutarComandoSQL(sql);
    }

    public void DeletarProduto(string id)
    {
        string sql = "DELETE FROM produto WHERE id = @id";
        MySqlCommand cmd = new MySqlCommand();
        cmd.Parameters.AddWithValue("@id", id);
        cmd.CommandText = sql;

        objDAL.ExecutarComandoSQL(cmd);
    }
}