using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ComponenteEntidades;
using ComponenteDatos;
namespace ComponenteNegocio
{
    public class CarritoaNE
    {
        CarritoDA cdao = new CarritoDA();
        public string Insertar(Carrito cat)
        {
            return cdao.Insertar(cat);
        }
    }
}
