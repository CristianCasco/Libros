//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LibrosEDM.ModeloAplicacion
{
    using System;
    using System.Collections.Generic;
    
    public partial class CopiaLibro
    {
        public int Id { get; set; }
        public string NumeroCopia { get; set; }
        public int LibrosId { get; set; }
    
        public virtual Libros Libro { get; set; }
    }
}
