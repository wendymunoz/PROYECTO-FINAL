using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoMulti.Models
{
    public class Receta
    {
        public int Id { get; set; }
        public string Recetita { get; set; }
        public int Likes { get; set; }
        public int Dislikes { get; set; }
    }
}