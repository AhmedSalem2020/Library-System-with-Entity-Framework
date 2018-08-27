using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace EFProject.Data
{
    [Serializable]
    public class employee
    {
        [Key]
        [ForeignKey("user")]
        public int userId { get; set; }
       
        
        //extra information
        public decimal salary { get; set; }

        public virtual user user { get; set; }

    }

}