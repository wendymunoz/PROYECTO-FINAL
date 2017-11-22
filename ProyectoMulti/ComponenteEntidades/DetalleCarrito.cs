using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComponenteEntidades
{
    public class DetalleCarrito
    {
        private string _codigo;
        private decimal _cantidad;
        private decimal _precio;
        private decimal _subtotal;
        private string _codproducto;

        public string Codigo { get => _codigo; set => _codigo = value; }
        public decimal Cantidad { get => _cantidad; set => _cantidad = value; }
        public decimal Precio { get => _precio; set => _precio = value; }
        public decimal Subtotal { get => _subtotal; set => _subtotal = value; }
        public string Codproducto { get => _codproducto; set => _codproducto = value; }
    }
}
