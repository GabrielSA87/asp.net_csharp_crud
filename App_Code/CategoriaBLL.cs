using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;

public class CategoriaBLL
{
    public string Nome { get; set; }

    DAL objDAL = new DAL();

    public DataTable RetCategoriasProdutos()
    {
        return objDAL.RetDataTable("select * from categoria");
    }

    public DataTable CarregarCategoriaById(string id)
    {
        return objDAL.RetDataTable("select * from categoria where id = " + id);
    }

    public void InserirCategoria()
    {
        string sql = "INSERT INTO categoria(nome) VALUES('{0}')";
        sql = String.Format(sql, Nome);
        objDAL.ExecutarComandoSQL(sql);
    }

    public void AlterarCategoria(string id)
    {
        string sql = "UPDATE categoria SET nome='{0}' WHERE id='{1}'";
        sql = String.Format(sql, Nome, id);
        objDAL.ExecutarComandoSQL(sql);
    }

    public void DeletarCategoria(string id)
    {
        string sql = "DELETE FROM categoria WHERE id = @id";
        MySqlCommand cmd = new MySqlCommand();
        cmd.Parameters.AddWithValue("@id", id);
        cmd.CommandText = sql;

        objDAL.ExecutarComandoSQL(cmd);
    }
}