using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using BDconexion;
using ComponenteEntidades;
using System.Data;
using System.Data.SqlClient;

namespace ComponenteDatos
{
   public class CarritoDA
    {
        private ConeccionBD conn = new ConeccionBD();
        private SqlCommand cmdVentas = new SqlCommand();
    

    public string Insertar(Carrito prod)
    {
        string rpta = "";
        try
        {
            cmdVentas.CommandType = CommandType.StoredProcedure;
            cmdVentas.CommandText = "InsertarCarrito";
            cmdVentas.Connection = conn.conectarBD();
            {
                cmdVentas.Parameters.AddWithValue("@idcarrito", prod.Codigo);
                cmdVentas.Parameters.AddWithValue("@fecha", prod.Fecha);
                cmdVentas.Parameters.AddWithValue("@subtotal", prod.Subtotal);
                cmdVentas.Parameters.AddWithValue("@igv", prod.Igv);
                cmdVentas.Parameters.AddWithValue("@total", prod.Total);
                cmdVentas.Parameters.AddWithValue("@dni", prod.Cliente);
            }
            int registros;
            registros = cmdVentas.ExecuteNonQuery();
            if (registros == 1)
            {
                rpta = "OK";
            }
            else
            {
                rpta = "Error al Insertar";
            }
        }
        catch (Exception ex)
        {
            System.Console.Write(ex.Message);
        }
        return rpta;
    }
    }
}
