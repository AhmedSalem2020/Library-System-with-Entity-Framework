using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace EFProject.Data.Dtos
{

    public class booksDto
    {
        public int id { get; set; }

        public int copiesCount { get; set; }
        public int availableCopies { get; set; }

        [Required]
        public string title { get; set; }

        public int autherId { get; set; }
        public virtual author author { get; set; }


        public int publisherId { get; set; }
        public virtual publisher publisher { get; set; }

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

    public class userBookDto
    {
        public int id { get; set; }

        public int userId { get; set; }
        public  user user { get; set; }
        public string userName { get { return user.userName; } }

        public int bookId { get; set; }
        public  book book { get; set; }
        public string bookTitle { get { return book.title; } }

        public BookStatus status { get; set; }

        public DateTime startDate { get; set; }

        public DateTime? returnDate { get; set; }

        public DateTime deliveredDate { get; set; }

        public bool isDelivered { get; set; }
        public override bool Equals(object obj)
        {

            userBookDto Right = obj as userBookDto;
            if (Right == null) return false;

            if (this.GetType() != Right.GetType()) return false;

            if (Object.ReferenceEquals(this, Right)) return true;

            return (this.bookId == Right.bookId);
               
        }
        public int GetHashCode(userBookDto obj)
        {
            return obj.bookId;
        }

    }
}