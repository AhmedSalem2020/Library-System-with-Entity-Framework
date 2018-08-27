using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EFProject.Data;
using System.Drawing;
using EFProject.Data.Dtos;

namespace EFProject.User
{

    /// <summary>
    /// 
    /// This page shows the Current Borrowed Books for each member 
    /// 
    /// and return date and number of borrowed times for any book.
    /// 
    /// (warning with late returned books )
    /// 
    /// and you will see the result on a grid view.
    /// 
    /// </summary>

    public partial class CurrentBorrwedBooks : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                //try
                //{

                    if (Session["userId"] != null)
                    {
                        int userId = int.Parse(Session["userId"].ToString());

                        var currentBooks = lm.userBook.
                            Where(x => x.status == BookStatus.isborrowking && x.isDelivered == false&& x.userId == userId).Select(x => new
                        {
                            x.book.joinDate,
                            x.book.title,
                            x.book.categoryName,
                            x.book.publishDate,

                            x.isDelivered,
                            x.deliveredDate,
                            // x.book.userBooks.Where(z => z.isDelivered == true).Count();
                            x.book.userBooks.Where(w => w.status == BookStatus.isborrowking && w.isDelivered == true).ToList().Count
                        });

                        GridView1.DataSource = currentBooks.ToList();
                        GridView1.DataBind();

                        for (int i = 0; i < GridView1.Rows.Count; i++)
                        {
                        //DateTime returnTime = DateTime.Parse(GridView1.Rows[i].Cells[6].Text.ToString());

                        string[] separators = { "/", " "};
                        string value = GridView1.Rows[i].Cells[4].Text;
                        string[] date = value.Split(separators, StringSplitOptions.RemoveEmptyEntries);

                        int a = int.Parse(date[0]);
                        int b = int.Parse(date[1]);
                        int c = int.Parse(date[2]);


                        if (a < DateTime.Now.Month || a == DateTime.Now.Month && b < DateTime.Now.Day)

                        {
                            GridView1.Rows[i].BackColor = Color.Red;

                        }

                        else
                        {
                            Response.Redirect("~/User/Login.aspx");

                        }

                    }

                    }
                //}

                //catch (Exception ex)
                //{
                //    Response.Redirect("~/ErrorPage/error.aspx");

                //    Console.WriteLine(ex.Message);
                //    Console.WriteLine(" u did something wrong");
                //}


                #region to make an alert by ajax
                //var lateBooks = lm.users.SingleOrDefault(us => us.id == 8).userBooks.Where(x => x.status == BookStatus.isborrowking && x.isDelivered == false && x.returnDate<= x.deliveredDate).Select(x => new
                //{
                //    x.book.joinDate,
                //    x.book.title,
                //    x.book.categoryName,
                //    x.book.publishDate,
                //    x.returnDate

                //});

                #endregion


            }
                else
                {
                    Response.Redirect("~/User/Login.aspx");

                }
            }
        }
    }
