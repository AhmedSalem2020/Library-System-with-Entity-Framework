using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace EFProject.Data
{
      public class user 
    {
        public int id { get; set; }

        [Required]
        public string userName { get; set; }

        [Required]
        [EmailAddress]
        public string email { get; set; }

        [Required]
        public string fName { get; set; }

        [Required]
        public string lName { get; set; }

        public byte[] image { get; set; }

        public Role? role { get; set; }

        public DateTime birthDate { get; set; }

        public string address { get; set; }

        public string phone { get; set; }
        public string password { get; set; }

        public DateTime JoinDate { get; set; }
        public bool isDeleted { get; set; }
     
        public bool firstLogin { get; set; }


        public virtual employee employee { get; set; }
        public virtual member member { get; set; }
        public virtual List<userBook> userBooks { get; set; }



    }

}