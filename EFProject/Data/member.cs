using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace EFProject.Data
{
   [Serializable]
    public class member
    {
        [Key]
        [ForeignKey("user")]
        public int id { get; set; }


        //extra information

        public bool isBlock { get; set; }

        public DateTime? endDate { get; set; }

        public virtual user user { get; set; }

    }

}