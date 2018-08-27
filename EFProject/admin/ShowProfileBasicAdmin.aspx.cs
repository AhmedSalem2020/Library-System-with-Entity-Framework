using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFProject.admin
{
    public partial class ShowProfile : System.Web.UI.Page
    {
        LibararyModel libModel = new LibararyModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    if (Session["userId"] != null)
                    {
                        int id = (int)Session["userId"];
                        var query = libModel.users.Single(u => u.id == id /* ,u.role == Role.BasicAdmin &&*/);
                        var query1 = libModel.employees.Single(emp => emp.userId == query.id);
                        lbl_AdminName.Text = query.userName;
                        lbl_FirstName.Text = query.fName;
                        lbl_LastName.Text = query.lName;
                        lbl_Email.Text = query.email;
                        lbl_BirthDate.Text = query.birthDate.ToString("dd/MM/yyyy");
                        lbl_HierDate.Text = query.JoinDate.ToString("dd/MM/yyyy");
                        lbl_Address.Text = query.address;
                        lbl_Phone.Text = query.phone.ToString();
                        lbl_Salary.Text = query1.salary.ToString();

                        //img_Image.ImageUrl = query.image;
                        img_Image.ImageUrl = "data:image;base64," + Convert.ToBase64String(query.image);
                    }
                    else
                    {
                        Response.Redirect("~/User/Login.aspx");
                    }
                }
                catch (Exception ex)
                {
                    ex.Message.ToString();
                }
            }
        }

        protected void btn_EditProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/UpdateProfileBasicAdmin.aspx");
        }

        protected void btn_ChangePassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/ChangePassword.aspx");
        }


        //protected void lbtn_Updateprofile_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/admin/UpdateProfileBasicAdmin.aspx");
        //}

        //protected void lbtn_ChangePassword_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/admin/ChangePassword.aspx");

        //}

        //protected void lbtn_Logout_Click(object sender, EventArgs e)
        //{
        //    //HttpCookie c = new HttpCookie("user");
        //    //c.Expires = DateTime.Now.AddDays(-20);
        //    //Response.Cookies.Add(c);

        //    //Session["userId"] = null;
        //    Response.Redirect("~/User/Login.aspx");
        //}
    }
}