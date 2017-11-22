using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComponenteEntidades
{
    public class Carrito
    {
        private string _codigo;
        private string _fecha;
        private decimal _subtotal;
        private decimal _igv;
        private decimal _total;
        private string _cliente;

        public Carrito(string codigo, string fecha, decimal subtotal, decimal igv, decimal total, string cliente)
        {
            _codigo = codigo;
            _fecha = fecha;
            _subtotal = subtotal;
            _igv = igv;
            _total = total;
            _cliente = cliente;
        }

        public Carrito(string ccodigo)
        {
            _codigo = ccodigo;
        }

        public string Codigo { get => _codigo; set => _codigo = value; }
        public string Fecha { get => _fecha; set => _fecha = value; }
        public decimal Subtotal { get => _subtotal; set => _subtotal = value; }
        public decimal Igv { get => _igv; set => _igv = value; }
        public decimal Total { get => _total; set => _total = value; }
        public string Cliente { get => _cliente; set => _cliente = value; }
    }

}
