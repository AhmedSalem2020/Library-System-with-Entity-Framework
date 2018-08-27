using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EFProject.Data;
using System.Data;
using System.IO;


namespace EFProject.User
{

    /// <summary>
    /// 
    /// This page will take you to the login form to put 
    /// 
    /// your username and password to enter to the website 
    /// 
    /// </summary>

    public partial class Login : System.Web.UI.Page
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
                        int id = int.Parse(Session["userId"].ToString());

                        var dt = lm.users.SingleOrDefault(x => x.id == id);

                       
                        if (dt.role != null)
                        {
                            Response.Redirect("~/admin/ShowProfileBasicAdmin.aspx");
                        }

                        else
                        {
                            Response.Redirect("~/User/Profile.aspx");
                        }
                    }

                    else if (Request.Cookies["user"] != null)
                    {
                        int id = int.Parse(Request.Cookies["user"].Values["id"]);

                        var dt = lm.users.SingleOrDefault(x => x.id == id);

                        Session.Add("userId", dt.id);
                        Session.Add("username", dt.userName);

                        if (dt.role != null)
                        {
                            Response.Redirect("~/admin/ShowProfileBasicAdmin.aspx");
                        }

                        else
                        {
                            Response.Redirect("~/User/Profile.aspx");
                        }
                    }
                    else if (Session["FirstLogin"] != null)
                    {
                        Response.Redirect("~/User/changepassword.aspx");
                    }
                }


                catch (Exception Ex)
                {
                    //Response.Redirect("~/ErrorPage/error.aspx");

                    //Console.WriteLine(Ex.Message);
                    //Console.WriteLine(" u did something wrong");

                }

            }

        }

        protected void btn_login_Click1(object sender, EventArgs e)
        {
            var dt = lm.users.FirstOrDefault(x => x.userName == txt_username.Text && x.password == txt_loginPass.Text);
            //var firstLogin =Convert.ToBoolean( lm.users.Single(x => x.firstLogin));
            if (dt == null)
            {
                lbl_result.Text = "invalid userName or Password";
                return;
            }
                if (dt.firstLogin == true)
            {
                Session.Add("FirstLogin", dt.id);
                Response.Redirect("~/User/ChangePassword.aspx");

            }
            if (dt != null)
            {
                Session.Add("userId", dt.id);
                Session.Add("username", dt.userName);
                //lbl_result.Text = "welcome";

                if (chk_remeber.Checked == true)
                {
                    HttpCookie cookie = new HttpCookie("user");

                    cookie.Values.Add("id", Session["userId"].ToString());
                    cookie.Expires = DateTime.Now.AddDays(20);
                    Response.Cookies.Add(cookie);
                }





                if (dt.role != null)
                {
                    Response.Redirect("~/admin/ShowProfileBasicAdmin.aspx");
                }

                else
                {
                    Response.Redirect("~/User/Profile.aspx");
                }
            }
            else
            {

                lbl_result.Text = "invalid";

            }
        }



        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/ForgetPassword.aspx");
        }

    }
}
