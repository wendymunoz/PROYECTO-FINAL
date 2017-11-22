using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace BDconexion
{
    public class ConeccionBD
    {
        private string cadena = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\Documents\GitHub\PROYECTO-FINAL\ProyectoMulti\ProyectoMulti\App_Data\TheGreenHome.mdf;Integrated Security=True";

        private SqlConnection conexion;

        public SqlConnection conectarBD()
        {
            conexion = new SqlConnection(cadena);
            if (conexion.State == ConnectionState.Open)
            {
                conexion.Close();
            }
            else
            {
                conexion.Open();
            }
            return conexion;
        }
    }
}
