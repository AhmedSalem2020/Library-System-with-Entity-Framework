using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ui.admin
{
    public partial class adminMaster : System.Web.UI.MasterPage
    {
        LibararyModel lm = new LibararyModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {
                Response.Redirect("../user/Login.aspx");
            }
                int id = int.Parse(Session["userId"].ToString());
            var dt = lm.users.SingleOrDefault(x => x.id == id);
            if (dt.role == Role.BasicAdmin)
            {
                mv_LibrarySystem.ActiveViewIndex = 0;



             }

            else if (dt.role == Role.Admin)
            {
                mv_LibrarySystem.ActiveViewIndex = 1;

            }

            else if (dt.role == Role.Employee)
            {
                mv_LibrarySystem.ActiveViewIndex = 2;

            }
        }
        protected void lbtn_Logout_Click(object sender, EventArgs e)
        {
            Session["userId"] = null;
            Response.Redirect("../user/Login.aspx");
        }
    }
}