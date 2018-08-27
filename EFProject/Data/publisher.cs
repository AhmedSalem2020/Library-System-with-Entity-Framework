using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace EFProject.Data
{
    [Serializable]
    public class publisher
    {
        public int id { get; set; }

      
        [Required]
        public string name { get; set; }
        public bool isDeleted { get; set; }



    }

}