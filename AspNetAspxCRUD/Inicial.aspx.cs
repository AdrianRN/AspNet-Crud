using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetAspxCRUD
{
    public partial class Inicial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGravar_Click(object sender, EventArgs x)
        {
            Alumnos p = new Alumnos();
            p.nome = txbNome.Text;
            p.apellido = txtApellido.Text;
            p.idade = int.Parse(txbIdade.Text);
            p.altura = int.Parse(txbAltura.Text);


            //p.gravarPessoa();
            
            

            try
            {
                if(p.gravarPessoa());
                lblGravou.Text = "Guardado Exitosamente!";
            }
            catch (ArgumentOutOfRangeException ex)
            {
                //lblGravou.Visible = true;
                lblGravou.Text = "Error" + ex.ToString();
            }

        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            Conex bd = new Conex();

            dt = bd.executeQuery("select * from students2");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnExcluir_Click(object sender, EventArgs e)
        {
            Alumnos p = new Alumnos();
            p.id = int.Parse(txbIdExcluir.Text);

            if (p.excluirPessoa())
            {
                lblExcluiu.Text = "Eliminado correctamente!";
            }
            else
            {
                lblExcluiu.Text = "Error";
            }
        }

        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            Alumnos p = new Alumnos();
            p.id = int.Parse(txbIdAlt.Text);
            p.nome = txbNomeAlt.Text;
            p.apellido = txtApellidoE.Text;
            p.idade = int.Parse(txbIdadeAlt.Text);
            p.altura = int.Parse(txbAlturaAlt.Text);

            if (p.alterarPessoa())
            {
                lblAlterou.Text = "Actualizado correctamente";
            }
            else
            {
                lblAlterou.Text = "Error";
            }
        }

        protected void btnDataReader_Click(object sender, EventArgs e)
        {
            Alumnos p = new Alumnos();
            p = p.retornaPessoa(1);
            lblDataReader.Text = p.nome;
        }
    }
}