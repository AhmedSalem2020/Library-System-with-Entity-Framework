using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EFProject.Data;

namespace EFProject.User
{
    public partial class USer : System.Web.UI.MasterPage
    {
        LibararyModel lm = new LibararyModel();
        protected void Page_Load(object sender, EventArgs e)
        {


            var data = lm.books.Count();

            booksTotal.Text = data.ToString();

            TotalMembers.Text = lm.members.Count().ToString();

            TotalBorrows.Text = lm.userBook.Where(x => x.status == BookStatus.isborrowking).Count().ToString();

        }

    }
}