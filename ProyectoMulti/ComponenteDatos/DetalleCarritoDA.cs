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
    public class DetalleCarritoDA
    {
        private  ConeccionBD conn = new ConeccionBD();
        private SqlCommand cmdDetalleVentas = new SqlCommand();

        public string Insertar(DetalleCarrito prod)
        {
            string rpta = "";
            try
            {
                cmdDetalleVentas.CommandType = CommandType.StoredProcedure;
                cmdDetalleVentas.CommandText = "InsertarDetalleCarrito";
                cmdDetalleVentas.Connection = conn.conectarBD();
                {
                    cmdDetalleVentas.Parameters.AddWithValue("@idcarrito", prod.Codigo);
                    cmdDetalleVentas.Parameters.AddWithValue("@cant", prod.Cantidad);
                    cmdDetalleVentas.Parameters.AddWithValue("@prec", prod.Precio);
                    cmdDetalleVentas.Parameters.AddWithValue("@subtotal", prod.Subtotal);
                    cmdDetalleVentas.Parameters.AddWithValue("@codpro", prod.Codproducto);
                }
                int registros;
                registros = cmdDetalleVentas.ExecuteNonQuery();
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
