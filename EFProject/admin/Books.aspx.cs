using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFProject.admin
{
    public partial class Books : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    lbl_Book.Text = lm.books.Count().ToString();

                    gv_Books.DataSource = lm.books.OrderByDescending(b => b.id).Select(b => new { b.title, b.name, b.copiesCount, b.categoryName }).ToList();
                    gv_Books.DataBind();

                    gv_BookJoinDate.DataSource = lm.books.OrderByDescending(bo => bo.joinDate).Select(bo => new { bo.name, bo.joinDate, bo.availableCopies }).ToList();
                    gv_BookJoinDate.DataBind();
                }
                catch(Exception ex)
                {
                    ex.Message.ToString();
                }
            }
        }
    }
}