using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProyectoMulti.Models
{
    public class AccesoBD
    {
        public void Votar(int recetaId, bool like)
        {
            var cadena = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (var conexion = new SqlConnection(cadena))
            {
                conexion.Open();

                var query = $"UPDATE Receta SET Likes = Likes + 1 WHERE Id = {recetaId}";

                if (like == false)
                {
                    query = $"UPDATE Receta SET Dislikes = Dislikes + 1 WHERE Id = {recetaId}";
                }

                using (var comando = new SqlCommand(query, conexion))
                {
                    comando.ExecuteNonQuery();
                }

            }
        }
    }
}