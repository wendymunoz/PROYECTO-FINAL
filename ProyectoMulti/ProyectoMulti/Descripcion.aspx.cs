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

        protected void FormView2_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            var fechaActual = DateTime.Now;
            var productoActual = Request.QueryString["pId"];
            var usuario = "Wen";

            e.Values["Usuario"] = usuario;
            e.Values["FechaCreacion"] = fechaActual;
            e.Values["ProductoId"] = productoActual;
        }
    }
}