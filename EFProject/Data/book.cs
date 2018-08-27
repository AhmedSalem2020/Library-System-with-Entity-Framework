using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace EFProject.Data
{
    [Serializable]

    public class book 
    {
        public int id { get; set; }

        public int copiesCount { get; set; }
        public int availableCopies { get; set; }

        [Required]
        public string title { get; set; }

        [ForeignKey("author")]
        public int autherId { get; set; }
        public virtual author author { get; set; }


        [ForeignKey("publisher")]
        public int publisherId { get; set; }
        public virtual publisher publisher { get; set; }

        [ForeignKey("category")]
        public string categoryName { get; set; }
        public virtual category category { get; set; }


        public string cover { get; set; }

        [Required]
        public string name { get; set; }

        public string source { get; set; }
        public bool isDeleted { get; set; }

        public DateTime joinDate { get; set; }
        public DateTime publishDate { get; set; }

        public virtual List<userBook> userBooks { get; set; }


    }

}