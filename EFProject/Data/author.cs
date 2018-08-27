using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace EFProject.Data
{
    [Serializable]
    public class author
    {
        public int id { get; set; }

        [EmailAddress]
        public string email { get; set; }

        [Required]
        public string fName { get; set; }

        [Required]
        public string lName { get; set; }

        public string image { get; set; }


        public DateTime birthDate { get; set; }
        public bool isDeleted { get; set; }



    }

}