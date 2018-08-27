using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFProject.admin
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void btn_ChangePassword_Click(object sender, EventArgs e)
        {
            try
            {
                if (IsValid)
                {
                    if (Session["userId"] != null)
                    {
                        int userId = int.Parse(Session["userId"].ToString());

                        var data = lm.users.Single(pw => pw.id == userId);

                        if (txt_Oldpass.Text == data.password)
                        {
                            data.password = txt_NewPass.Text;

                            lm.SaveChanges();
                        }
                        Response.Redirect("~/User/Login.aspx");
                    }

                    else
                    {
                        Response.Redirect("~/User/Login.aspx");
                    }
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
        }
        //protected void btn_login_Click1(object sender, EventArgs e)
        //{
        //    try
        //    {

        //            if (Session["userId"] != null)
        //            {
        //                int userId = int.Parse(Session["userId"].ToString());

        //                var data = lm.users.Single(pw => pw.id == userId);

        //                if (txt_Oldpass.Text == data.password)
        //                {
        //                    txt_Oldpass.Text = data.password;

        //                    data.password = txt_NewPass.Text;

        //                    lm.SaveChanges();
        //                }
        //                else
        //                {
        //                    lbl_Message.Text = " You Intered an Invalid Password ";
        //                }
        //            }

        //        else
        //        {
        //            Response.Redirect("~/User/Login.aspx");
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        ex.Message.ToString();
        //    }
        //}
    }
}