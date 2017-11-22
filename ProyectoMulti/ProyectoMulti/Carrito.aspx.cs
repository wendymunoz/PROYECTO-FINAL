using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using ComponenteNegocio;
using ComponenteEntidades;
namespace ProyectoMulti
{
    public partial class Carrito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int i;
            double total = 0, prec, subtotal = 0, igv;
            string cod, desc;
            int cant;

            var items = (DataTable)Session["pedido"];
            for (i = 0; i < GridView1.Rows.Count; i++)
            {
                cod = (GridView1.Rows[i].Cells[1].Text);
                desc = (GridView1.Rows[i].Cells[2].Text);
                prec = System.Convert.ToDouble(GridView1.Rows[i].Cells[3].Text);
                cant = System.Convert.ToInt16(((TextBox)this.GridView1.Rows[i].Cells[4].FindControl("TextBox1")).Text);
                double prec1 = System.Convert.ToDouble(prec);
                subtotal = cant * prec1;
                GridView1.Rows[i].Cells[5].Text = subtotal.ToString();
                foreach (DataRow dr in items.Rows)
                {
                    if (dr["codproducto"].ToString() == cod.ToString())
                    {
                        dr["canproducto"] = cant;
                        dr["subtotal"] = subtotal;
                    }
                }
                total = total + subtotal;
            }

            igv = total * 0.18;
            subtotal = total - igv;

            lblIGV.Text = igv.ToString("0.00");
            lblSubTotal.Text = subtotal.ToString("0.00");
            lblTotal.Text = total.ToString("0.00");
        }
        public double TotalCarrito(DataTable dt)
        {
            double tot = 0;
            foreach (DataRow item in dt.Rows)
            {
                tot += Convert.ToDouble(item[4]);
            }
            return tot;
        }
    }
}