using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFProject.admin
{
    public partial class UpdatProfile : System.Web.UI.Page
    {
        LibararyModel db = new LibararyModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                if (Session != null)
                {

                    // int id = int.Parse(Session["id"].ToString());
                    var query1 = db.users.Single(u => u.id == 1);
                    txt_userName.Text = query1.userName;
                    txt_mail.Text = query1.email;
                    txt_Fname.Text = query1.fName;
                    txt_lname.Text = query1.lName;
                    txt_birthDate.Text = query1.birthDate.ToString();
                    txt_address.Text = query1.address;
                    lbl_id.Text = query1.id.ToString();


                }


            }
        }

        [WebMethod]
        public static string UpdateData(string fname)//, string lname, string email, string add, string id)
        {




            using (LibararyModel db = new LibararyModel())
            {

                int eid = 0; //int.Parse(id);  // will come from login session


                var q1 = db.users.Single(emp => emp.id == eid);
                q1.fName = fname;
                //q1.lName = lname;

                //q1.email = email;
                //q1.address = add;
                db.SaveChanges();

            }

            return "submit";
        }



        protected void btn_Update_Click(object sender, EventArgs e)
        {
            //var query1 = db.users.Single(u => u.id == 1);
            //query1.userName = txt_userName.Text;
            //query1.email = txt_mail.Text;
            //query1.fName = txt_Fname.Text;
            //query1.lName = txt_lname.Text;

            //string birthDate = txt_birthDate.Text;
            //birthDate = query1.birthDate.ToString();
            //query1.address = txt_address.Text;

            //Response.Redirect("ViewProfile.aspx");



        }
    }
}