//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace test.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class report_card
    {
        public int student_Unique_ID { get; set; }
        public int year { get; set; }
    
        public virtual language_arts language_arts { get; set; }
        public virtual math math { get; set; }
        public virtual reading reading { get; set; }
        public virtual student student { get; set; }
    }
}
