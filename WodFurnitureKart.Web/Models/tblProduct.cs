//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WodFurnitureKart.Web.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblProduct
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string ProductDesc { get; set; }
        public string ProductImage { get; set; }
        public Nullable<decimal> Price { get; set; }
        public Nullable<decimal> Weight { get; set; }
        public int CategoryId { get; set; }
        public Nullable<int> SubCategoryId { get; set; }
        public Nullable<int> ManufactureId { get; set; }
    }
}