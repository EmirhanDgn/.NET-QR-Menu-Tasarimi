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
    
    public partial class urunler
    {
        public int UrunID { get; set; }
        public string UrunBaslik { get; set; }
        public string UrunAciklama { get; set; }
        public string UrunFiyat { get; set; }
        public string UrunResim { get; set; }
        public int InStock { get; set; }
        public int YemekKategori { get; set; }
    
        public virtual kategori kategori { get; set; }
    }
}
