using EFProject.Data;
using EFProject.Data.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFProject.admin
{
    public partial class empBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LibararyModel lm = new LibararyModel();
                lm.Configuration.ProxyCreationEnabled = false;
                var ssers = lm.users.Where(x => !x.isDeleted && !x.member.isBlock).ToList();


                ddl_users.DataSource = ddl_users2.DataSource = ssers;
                ddl_users.DataTextField = ddl_users2.DataTextField = "userName";
                ddl_users.DataValueField = ddl_users2.DataValueField = "id";
                ddl_users.DataBind(); ddl_users2.DataBind();
            }
        }
        protected void rbtnl_returnType_SelectedIndexChanged(object sender, EventArgs e)
        {
            var returnStatus = (BookStatus)Convert.ToInt32(rbtnl_returnType.SelectedValue);
            LibararyModel lm = new LibararyModel();
            lm.Configuration.ProxyCreationEnabled = false;
            var todayDate = Convert.ToDateTime(DateTime.Now.ToShortDateString());

            if (returnStatus == BookStatus.isReading)
            {
                var books = lm.userBook.Where(x => x.status == returnStatus && x.startDate == todayDate
                && x.startDate == todayDate
                && x.isDelivered == false)
                    .Select(x => new userBookDto { book = x.book, bookId = x.bookId }).ToList();
                books = books.Distinct().ToList();


                ddl_Returnbooks.DataSource = books;
                ddl_Returnbooks.DataTextField = "bookTitle";
                ddl_Returnbooks.DataValueField = "bookId";
                ddl_Returnbooks.DataBind();
                if (books.Count() > 0)
                    ddl_Returnbooks_SelectedIndexChanged(null, null);
            }
            else
            {
                var books = lm.userBook.Where(x => x.status == returnStatus
               && x.isDelivered == false)
                  .Select(x => new userBookDto { book = x.book, bookId = x.bookId }).ToList();
                books = books.Distinct().ToList();


                ddl_Returnbooks.DataSource = books;
                ddl_Returnbooks.DataTextField = "bookTitle";
                ddl_Returnbooks.DataValueField = "bookId";
                ddl_Returnbooks.DataBind();
                if (books.Count() > 0)
                    ddl_Returnbooks_SelectedIndexChanged(null, null);
            }
        }

        protected void ddl_Returnbooks_SelectedIndexChanged(object sender, EventArgs e)
        {
            var returnStatus = (BookStatus)Convert.ToInt32(rbtnl_returnType.SelectedValue);
            var bookId = Convert.ToInt32(ddl_Returnbooks.SelectedValue);
            LibararyModel lm = new LibararyModel();
            lm.Configuration.ProxyCreationEnabled = false;
            var todayDate = Convert.ToDateTime(DateTime.Now.ToShortDateString());

            if (returnStatus == BookStatus.isReading)
            {
                var users = lm.userBook.Where(x => x.status == returnStatus && x.startDate == todayDate
                && x.startDate == todayDate
                && x.isDelivered == false
                && x.bookId == bookId)
                    .Select(x => new userBookDto { user = x.user, userId = x.userId }).ToList();


                ddl_ReturnUsers.DataSource = users;
                ddl_ReturnUsers.DataTextField = "userName";
                ddl_ReturnUsers.DataValueField = "userId";
                ddl_ReturnUsers.DataBind();
            }
            else
            {
                var users = lm.userBook.Where(x => x.status == returnStatus
               && x.isDelivered == false
               && x.bookId == bookId)
                   .Select(x => new userBookDto { user = x.user, userId = x.userId }).ToList();


                ddl_ReturnUsers.DataSource = users;
                ddl_ReturnUsers.DataTextField = "userName";
                ddl_ReturnUsers.DataValueField = "userId";
                ddl_ReturnUsers.DataBind();
            }
        }

        protected void btn_return_Click(object sender, EventArgs e)
        {
            var returnStatus = (BookStatus)Convert.ToInt32(rbtnl_returnType.SelectedValue);
            var bookId = 0;
            var userId = 0;
            if (ddl_Returnbooks.SelectedValue != "" && ddl_ReturnUsers.SelectedValue != "")
            {
                bookId = Convert.ToInt32(ddl_Returnbooks.SelectedValue);
                userId = Convert.ToInt32(ddl_ReturnUsers.SelectedValue);
            }
            else
            {
                return;
            }
            LibararyModel lm = new LibararyModel();
            lm.Configuration.ProxyCreationEnabled = false;
            var todayDate = Convert.ToDateTime(DateTime.Now.ToShortDateString());
            if (bookId > 0 & userId > 0)
                if (returnStatus == BookStatus.isReading)
                {
                    var book = lm.userBook.Where(x => x.status == returnStatus && x.startDate == todayDate
                    && x.startDate == todayDate
                    && x.isDelivered == false
                    && x.bookId == bookId && x.userId == userId)
                        .FirstOrDefault();

                    var returnedBook = lm.books.FirstOrDefault(x => x.id == bookId);
                    returnedBook.availableCopies++;


                    book.isDelivered = true;
                    book.returnDate = DateTime.Now;

                    lm.SaveChanges();
                    var books = lm.userBook.Where(x => x.status == returnStatus && x.startDate == todayDate
                  && x.startDate == todayDate
                  && x.isDelivered == false)
                      .Select(x => new userBookDto { book = x.book, bookId = x.bookId }).ToList();
                    books = books.Distinct().ToList();

                    ddl_Returnbooks.DataSource = books;
                    ddl_Returnbooks.DataTextField = "bookTitle";
                    ddl_Returnbooks.DataValueField = "bookId";
                    ddl_Returnbooks.DataBind();
                    ddl_Returnbooks_SelectedIndexChanged(null, null);

                }
                else
                {
                    var book = lm.userBook.Where(x => x.status == returnStatus
                   && x.isDelivered == false
                   && x.bookId == bookId && x.userId == userId)
                       .FirstOrDefault();


                    book.isDelivered = true;
                    book.returnDate = DateTime.Now;
                    var returnedBook = lm.books.FirstOrDefault(x => x.id == bookId);
                    returnedBook.availableCopies++;

                    lm.SaveChanges();
                    var books = lm.userBook.Where(x => x.status == returnStatus
                  && x.isDelivered == false)
                      .Select(x => new userBookDto { book = x.book, bookId = x.bookId }).ToList();

                    books = books.Distinct().ToList();

                    ddl_Returnbooks.DataSource = books;
                    ddl_Returnbooks.DataTextField = "bookTitle";
                    ddl_Returnbooks.DataValueField = "bookId";
                    ddl_Returnbooks.DataBind();
                    ddl_Returnbooks_SelectedIndexChanged(null, null);
                }
        }

        [WebMethod]
        public static int addRead(int bookId, int userId)
        {
            LibararyModel lm = new LibararyModel();
            var check = lm.userBook.Where(x => x.userId == userId && x.bookId == bookId
             && x.isDelivered == false && x.status == BookStatus.isReading
            ).Count();
            if (check == 0)
            {

                var book = lm.books.FirstOrDefault(x => x.id == bookId);
                book.availableCopies--;
                var z = lm.userBook.Add(new userBook
                {

                    employeeId = 2,//session
                    bookId = bookId,
                    userId = userId,
                    startDate = Convert.ToDateTime(DateTime.Now.ToShortDateString()),
                    status = BookStatus.isReading,
                    isDelivered = false,
                    deliveredDate = Convert.ToDateTime(DateTime.Now.ToShortDateString()),


                });


                lm.SaveChanges();
                return z.id;
            }
            return -1;
        }


        [WebMethod]
        public static int addBorrow(int bookId, int userId)
        {
            LibararyModel lm = new LibararyModel();
            var check = lm.userBook.Where(x => x.userId == userId && x.bookId == bookId
             && x.isDelivered == false && x.status == BookStatus.isborrowking
            ).Count();
            if (check == 0)
            {

                var book = lm.books.FirstOrDefault(x => x.id == bookId);
                book.availableCopies--;
                var z = lm.userBook.Add(new userBook
                {

                    employeeId = 2,//session
                    bookId = bookId,
                    userId = userId,
                    startDate = DateTime.Now,
                    status = BookStatus.isborrowking,
                    isDelivered = false,
                    deliveredDate = DateTime.Now.AddDays(7),


                });


                lm.SaveChanges();
                return z.id;
            }
            return -1;
        }

        [WebMethod]
        public static List<booksDto> getbooks()
        {
            //using Newtonsoft.Json
            LibararyModel lm = new LibararyModel();
            lm.Configuration.ProxyCreationEnabled = false;

            var z = lm.books.Where(x => x.isDeleted == false).Select(x =>
                new booksDto
                {
                    author = x.author,
                    availableCopies = x.availableCopies,
                    categoryName = x.categoryName,
                    title = x.title,
                    id = x.id,
                    publishDate = x.publishDate,
                    publisher = x.publisher
                })
                .ToList();

            return z.ToList();

        }

        [WebMethod]
        public static List<userBookDto> getlatedBooks()
        {
            LibararyModel lm = new LibararyModel();
            lm.Configuration.ProxyCreationEnabled = false;

            var books = lm.userBook.Where(x => x.status == BookStatus.isborrowking
              && x.isDelivered == false&&
              x.deliveredDate<DateTime.Now
              )
                  .Select(x => new userBookDto { book = x.book, bookId = x.bookId,userId=x.userId,user=x.user }).ToList();
            return books;


        }
        [WebMethod]
        public static List<userBookDto> getstoledBooks()
        {
            LibararyModel lm = new LibararyModel();
            lm.Configuration.ProxyCreationEnabled = false;
            var todayDate = Convert.ToDateTime(DateTime.Now.ToShortDateString());

            var books = lm.userBook.Where(x => x.status == BookStatus.isReading && x.startDate != todayDate
               && x.isDelivered == false)
                   .Select(x => new userBookDto { book = x.book, bookId = x.bookId, userId = x.userId, user = x.user }).ToList();



            return books;


        }

    }
}