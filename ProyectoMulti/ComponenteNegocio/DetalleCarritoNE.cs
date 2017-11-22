using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ComponenteEntidades;
using ComponenteDatos;
namespace ComponenteNegocio
{
    public class DetalleCarritoNE
    {
        DetalleCarritoDA cdao = new DetalleCarritoDA();
        public string Insertar(DetalleCarrito cat)
        {
            return cdao.Insertar(cat);
        }
    }
}
