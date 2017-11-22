using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace ProyectoMulti
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnClick1_Button(object sender, EventArgs e)
        {

            int numero;
            numero = 0;
            DataView dvSql = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);

            if (dvSql.Count > 0)
            {
                numero = 1;
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            if (numero == 1)
            {
                //Session["usuario"] = dvSql[0].DataView[0];
                Session["Usuarios"] = dvSql[0].Row[0];
                Response.Redirect("Default.aspx");
                
            }

        }

    }
}