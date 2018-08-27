using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EFProject.Data;
using System.IO;

namespace EFProject.User
{

    /// <summary>
    /// 
    /// This page will take your update profile page to 
    /// 
    /// update your data such as username , first name , last name , email,
    /// 
    ///  phone , address and your image as shown below
    /// </summary>


    public partial class UpdateProfile : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();
        protected void Page_Load(object sender, EventArgs e)
        {

            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                try
                {


                    if (Session["userId"] != null)
                    {

                        int userId = int.Parse(Session["userId"].ToString());


                        var data = lm.users.Single(us => us.id == userId);

                        txt_UserName.Text = data.userName;

                        txt_Fname.Text = data.fName;

                        txt_LName.Text = data.lName;

                        txt_Email.Text = data.email;

                        txt_Address.Text = data.address;

                        txt_Phone.Text = data.phone;

                    img_image.ImageUrl = "data:image;base64," + Convert.ToBase64String(data.image);

                    //img_image.ImageUrl = data.image.ToString();
                }

                    else
                    {
                        Response.Redirect("~/User/Login.aspx");
                    }

                }

                catch (Exception ex)
                {
                    Response.Redirect("~/ErrorPage/error.aspx");

                    //Console.WriteLine(ex.Message);
                    //Console.WriteLine(" u did something wrong");
                }

            }
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {

            if (Session["userId"] != null)
            {
                int userId = int.Parse(Session["userId"].ToString());


                var data = lm.users.Single(us => us.id == userId);

                data.userName = txt_UserName.Text;

                data.fName = txt_Fname.Text;

                data.lName = txt_LName.Text;

                data.email = txt_Email.Text;

                data.address = txt_Address.Text;

                data.phone = txt_Phone.Text;

                if (fu_image.FileName != "")
                {
                    string filename = System.IO.Path.GetFileName(fu_image.FileName);
                    fu_image.PostedFile.SaveAs(Server.MapPath("userImage/" + filename));
                    System.Drawing.Image img = System.Drawing.Image.FromFile(Server.MapPath("userImage/" + filename));
                    byte[] path = imgToByteArray(img);
                    data.image = path;

                    lbl_success.Text = "Save Success";
                }

                else
                {
                    lbl_status.Text = "Invalid image";
                }

                lm.SaveChanges();
                Response.Redirect("~/User/Profile.aspx", false);


            }
            else
            {

                Response.Redirect("~/User/Login.aspx");

            }


        }

        public byte[] imgToByteArray(System.Drawing.Image img)
        {
            using (MemoryStream mstream = new MemoryStream())
            {
                img.Save(mstream, img.RawFormat);
                return mstream.ToArray();
            }
        }
    }
}