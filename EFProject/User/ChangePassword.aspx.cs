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
    /// this page has the capability to change the password of your account
    /// 
    /// and update the new password in the Database
    /// 
    /// </summary>

    public partial class ChangePassword : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();
        protected void Page_Load(object sender, EventArgs e)
        {

            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["userId"] == null&& Session["FirstLogin"] == null)
            {
                Response.Redirect("~/User/login.aspx");

            }
        }

        protected void btn_login_Click1(object sender, EventArgs e)
        {
            // to handel the error
            try
            {

                if (Session["userId"] != null)
                {
                    int userId = int.Parse(Session["userId"].ToString());




                    var data = lm.users.Single(pw => pw.id == userId);

                    if (txt_Oldpass.Text == data.password)
                    {

                        txt_Oldpass.Text = data.password; //put the old pass in the text

                        data.password = txt_NewPass.Text; // put the new one in the next text

                        lm.SaveChanges();
                    }

                    // if the pass u entered didnt match the pass in the database 
                    else
                    {

                        lbl_Message.Text = " You Intered an Invalid Password ";


                    }


                }

                else if (Session["FirstLogin"] != null)
                {
                    int userId = int.Parse(Session["FirstLogin"].ToString());

                    var data = lm.users.Single(pw => pw.id == userId);



                    data.password = txt_NewPass.Text; // put the new one in the next text
                    data.firstLogin = false; // put the new one in the next text

                    lm.SaveChanges();
                    Session["FirstLogin"] = null;
                    Session.Add("userId", data.id);
                    Session.Add("username", data.userName);
                    //lbl_result.Text = "welcome";




                    if (data.role != null)
                    {
                        Response.Redirect("~/admin/ShowProfileBasicAdmin.aspx");
                    }

                    else
                    {
                        Response.Redirect("~/User/Profile.aspx");
                    }
                }

            

                // if there is no session 
                else
            {

                Response.Redirect("~/User/Login.aspx");

            }


        }


            //catch the error
            catch (Exception ex)
            {
                //Response.Redirect("~/ErrorPage/error.aspx");

                //Console.WriteLine(ex.Message);
                //Console.WriteLine(" u did something wrong");

            }
}

       
    }
}