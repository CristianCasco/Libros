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
    
    public partial class TipoCliente
    {
        public TipoCliente()
        {
            this.Clientes = new HashSet<Cliente>();
        }
    
        public int Id { get; set; }
        public string CodigoTipoCliente { get; set; }
        public string DescripcionTipoCliente { get; set; }
    
        public virtual ICollection<Cliente> Clientes { get; set; }
    }
}
