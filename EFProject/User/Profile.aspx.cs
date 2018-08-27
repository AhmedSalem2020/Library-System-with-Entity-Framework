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
    /// This page will take your profile page to 
    /// 
    /// show your data such as username , first name , last name , email,
    /// 
    ///  phone , address and your image as shown below
    /// </summary>

    public partial class Profile : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            try
            {
                if (Session["userId"] != null)
                {
                    int userId = int.Parse(Session["userId"].ToString());

                    // int userId = 8;

                    user userProfile = lm.users.Single(u => u.id == userId);

                    lbl_username.Text = userProfile.userName;

                    lbl_fname.Text = userProfile.fName;

                    lbl_lname.Text = userProfile.lName;

                    lbl_mail.Text = userProfile.email;

                    lbl_phone.Text = userProfile.phone;

                    lbl_address.Text = userProfile.address;

                    // img_image.ImageUrl = userProfile.image.ToString();
                    img_image.ImageUrl = "data:image;base64," + Convert.ToBase64String(userProfile.image);


                }
                else
                {
                    Response.Redirect("~/User/Login.aspx",false);


                }
            }

            catch (Exception Ex)
            {
                Response.Redirect("~/ErrorPage/error.aspx");

                //Console.WriteLine(Ex.Message);
                //Console.WriteLine(" u did something wrong");
            }




        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/User/UpdateProfile.aspx");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            HttpCookie c = new HttpCookie("user");
            c.Expires = DateTime.Now.AddDays(-20);
            Response.Cookies.Add(c);

            Session["userId"] = null;
            Session["username"] = null;
            

            Response.Redirect("~/User/Login.aspx");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/ChangePassword.aspx");
        }
    }
}