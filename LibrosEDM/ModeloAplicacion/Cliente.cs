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
    
    public partial class Cliente
    {
        public Cliente()
        {
            this.AlquilerLibroes = new HashSet<AlquilerLibro>();
        }
    
        public int Id { get; set; }
        public int TipoClienteId { get; set; }
    
        public virtual ICollection<AlquilerLibro> AlquilerLibroes { get; set; }
        public virtual TipoCliente TipoCliente { get; set; }
    }
}
