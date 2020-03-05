﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Kids_U_Database_Reporting.Models
{
    public class OutcomeMeasurement
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int OutcomeId { get; set; }

        public int ReportCardId { get; set; }
        public ReportCard ReportCard { get; set; }


        public string Grade { get; set; }
        public int? MathPreTest { get; set; }
        public int? MathPostTest { get; set; }
        public int? LanguagePreTest { get; set; }
        public int? LanguagePostTest { get; set; }
        public int? ReadingPreTest { get; set; }
        public int? ReadingFluencyTest { get; set; }
        public int? ReadingFluencyTest2 { get; set; }
        public int? ReadingFluencyTest3 { get; set; }
        public int? SelfEsteemPreTest { get; set; }
        public int? SelfEsteemPostTest { get; set; }

    }
}
