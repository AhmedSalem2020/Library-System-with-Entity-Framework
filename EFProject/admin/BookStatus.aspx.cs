using EFProject.Data;
using EFProject.Data.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFProject.admin
{
    public partial class BookStates : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gv_BookStatus.DataSource = lm.userBook.Select(bs => new { bs.book.name, bs.user.userName, bs.startDate, bs.returnDate }).ToList();
                gv_BookStatus.DataBind();

                gv_memberBorrowBook.DataSource = lm.userBook.Where(mb => mb.status == BookStatus.isborrowking && mb.userId == mb.user.id).Select(mb => new { userName = mb.user.userName, EmpName = mb.employee.user.fName + " " + mb.employee.user.lName, mb.user.email, mb.user.JoinDate, mb.book.name }).ToList();
                gv_memberBorrowBook.DataBind();

                gv_MemberReading.DataSource = lm.userBook.Where(mb => mb.status == BookStatus.isReading && mb.userId == mb.user.id).Select(mb => new { userName = mb.user.userName, EmpName = mb.employee.user.fName + " " + mb.employee.user.lName, mb.user.email, mb.user.JoinDate, mb.book.name }).ToList();
                gv_MemberReading.DataBind();

                var query = lm.books.Select(b => new bookDto
                {
                    title = b.title,
                    name = b.name,
                    categoryName = b.categoryName,
                    joinDate = b.joinDate,
                    availableCopies = b.availableCopies
                }).ToList();
                gv_BooksAvailable.DataSource = query.Where(x => x.availableCopies > 1).ToList();
                gv_BooksAvailable.DataBind();

                
            }
        }
    }
}