using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoMulti
{
    public partial class Descripcion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           SqlDataSource3.InsertParameters["Fecha"].DefaultValue = Convert.ToDateTime("30-12-2011").ToString();
           SqlDataSource3.InsertParameters["Subtotal"].DefaultValue = Convert.ToDecimal(122.80).ToString();
            SqlDataSource3.InsertParameters["IGV"].DefaultValue = Convert.ToDouble(122.60).ToString();
            SqlDataSource3.InsertParameters["Total"].DefaultValue = Convert.ToDouble(200.70).ToString();
            SqlDataSource3.InsertParameters["DNIcliente"].DefaultValue = "2343242";

            try
            {
                SqlDataSource3.Insert();
                Label1.Text = "Usuario Creado";
            }
            catch(Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}