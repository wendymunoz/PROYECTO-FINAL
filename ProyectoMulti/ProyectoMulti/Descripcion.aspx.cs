using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ComponenteNegocio;
using ComponenteDatos;

using System.Data;
using System.Data.SqlClient;
namespace ProyectoMulti
{
    public partial class Descripcion : System.Web.UI.Page


    {

        DataTable dtb;
        DataTable carrito = new DataTable();

        public void CargarDetalle()
        {
            dtb = new DataTable("Carrito");
            dtb.Columns.Add("codproducto", System.Type.GetType("System.String"));
            dtb.Columns.Add("desproducto", System.Type.GetType("System.String"));
            dtb.Columns.Add("preproducto", System.Type.GetType("System.Double"));
            dtb.Columns.Add("subtotal", System.Type.GetType("System.Double"));
            dtb.Columns.Add("canproducto", System.Type.GetType("System.Int32"));

            Session["pedido"] = dtb;
        }

        public void AgregarItem(string cod, string des, double precio)
        {
            double total;
            int cantidad = 1;
            total = precio * cantidad;
            carrito = (DataTable)Session["pedido"];
            DataRow fila = carrito.NewRow();
            fila[0] = cod;
            fila[1] = des;
            fila[2] = precio;
            fila[3] = (int)cantidad;
            fila[4] = total;
            carrito.Rows.Add(fila);
            Session["pedido"] = carrito;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                CargarDetalle();
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Datalist1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string cod;
            string des = null, nom = null;
            double precio = 0;
            if (e.CommandName == "Seleccionar")
            {
                Datalist1.SelectedIndex = e.Item.ItemIndex;

                cod = ((Label)this.Datalist1.SelectedItem.FindControl("ProductoIdLabel")).Text;
                des = ((Label)this.Datalist1.SelectedItem.FindControl("NombreLabel")).Text;
                precio = double.Parse(((Label)this.Datalist1.SelectedItem.FindControl("PrecioLabel")).Text);
                AgregarItem(cod, des, precio);

                
                Session["prueba"] = "Sesión usuario prueba";
            }
        }
    }
}