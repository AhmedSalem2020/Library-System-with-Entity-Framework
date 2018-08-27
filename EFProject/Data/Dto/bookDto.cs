using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EFProject.Data.Dto
{
    public class bookDto
    {
        public int id { get; set; }
        public int copiesCount { get; set; }
        public int availableCopies { get; set; }
        public int borrowCopies
        {
            get
            {
                var count = copiesCount - availableCopies;
                return count ;
            }

        }

        public string title { get; set; }

        public virtual author author { get; set; }


        public virtual publisher publisher { get; set; }

        public string categoryName { get; set; }
        public virtual category category { get; set; }


        public string cover { get; set; }

        public string name { get; set; }

        public string source { get; set; }
        public bool isDeleted { get; set; }

        public DateTime joinDate { get; set; }
        public DateTime publishDate { get; set; }

    }
}