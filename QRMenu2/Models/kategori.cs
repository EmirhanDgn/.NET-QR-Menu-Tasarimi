//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QRMenu2.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class kategori
    {
        public kategori()
        {
            this.urunler = new HashSet<urunler>();
        }
    
        public int ID { get; set; }
        public string KategoriAdi { get; set; }
    
        public virtual ICollection<urunler> urunler { get; set; }
    }
}
