using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace EFProject.Data
{
    [Serializable]
    public class userBook
    {
        [Key]
        public int id { get; set; }

        [ForeignKey("user")]
        public int userId { get; set; }

        public virtual user user { get; set; }

        [ForeignKey("book")]
        public int bookId { get; set; }
        public virtual book  book { get; set; }

        public BookStatus status { get; set; }

        public DateTime startDate { get; set; }
        
        public DateTime? returnDate { get; set; }

        public DateTime deliveredDate { get; set; }

        public bool isDelivered { get; set; }


        [ForeignKey("employee")]
        public int employeeId { get; set; }
        public virtual employee employee { get; set; }


    }

}