using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using LibrosEDM;
using LibrosEDM.ModeloAplicacion;

namespace LibrosDAO
{
    public class TipoDeClienteDAO
    {
        LibrosModelConatiner db = new LibrosModelConatiner();   

        public bool Agregar(TipoCliente oTipo)
        {
            db.TipoCliente.add(oTipo);
            return (db.SaveChanges) > 0 ? true: false ;
        }

        public bool Modificar(TipoCliente oTipo)
        {
            db.Entry(oTipo).State = EntityState.Modified;
            return (db.SaveChanges) > 0 ? true : false;
        }

        public bool Eliminar(TipoCliente oTipo)
        {
            db.TipoCliente.Remove(oTipo);
            return (db.SaveChanges) > 0 ? true : false;
        }

        public TipoCliente Buscar(string pCodigo)
        {
            TipoCliente oTipo;
            oTipo = db.TipoClinte.DefaultIfEmpy(null).FirstOrDefault(tc => tc.CodigoTipoCliente.Trim() == pCodigo.Trim());
            return (oTipo);
        }

    }
}
