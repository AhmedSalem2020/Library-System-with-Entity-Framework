using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EFProject.Data;

namespace EFProject.User
{
    /// <summary>
    /// 
    /// This page shows the New Arrived Books 
    /// 
    /// and you will see the result on a grid view.
    /// 
    /// </summary>

    public partial class NewArrivedBooks : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] != null)
            {
                int userId = int.Parse(Session["userId"].ToString());


                // to get the time now 
                int Date = DateTime.Now.Year;

            var qq = lm.books.Where(x => x.publishDate.Year == Date).Select(x => new
            {

                // the data i will show on drid view
                x.name,
                pub= x.publisher.name,
                x.title,
                x.joinDate,
                x.publishDate,
                x.categoryName,
                x.availableCopies,
                x.copiesCount,
            });

            // to bind on grid view
            //GV_newBooks.DataSource = qq.ToList();
            //GV_newBooks.DataBind();

            ListView1.DataSource = qq.ToList();
            ListView1.DataBind();
            }

            else
            {
                Response.Redirect("~/User/Login.aspx");

            }

        }


    }
    }
