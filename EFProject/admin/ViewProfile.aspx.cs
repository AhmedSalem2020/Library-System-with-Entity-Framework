using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFProject.admin
{
    public partial class ViewProfile : System.Web.UI.Page

    {
        LibararyModel db = new LibararyModel();

        protected void Page_Load(object sender, EventArgs e)
        {

            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                if (Session != null)
                {
                    
                    int id = int.Parse(Session["id"].ToString());
                    var query1 = db.users.Single(u => u.id == id);
                    lbl_userName.Text = query1.userName;
                    lbl_mail.Text = query1.email;
                    lbl_Fname.Text = query1.fName;
                    lbl_lname.Text = query1.lName;
                    lbl_birthDate.Text = query1.birthDate.ToShortDateString();
                    lbl_address.Text = query1.address;

                }


            }
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdatProfile.aspx");
        }
    }
}