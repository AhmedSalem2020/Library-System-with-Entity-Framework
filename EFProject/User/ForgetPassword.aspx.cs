using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EFProject.Data;
using System.Net.Mail;
using System.Net;

namespace EFProject.User
{

    /// <summary>
    /// 
    /// this page has the capability if you forget your password
    /// 
    /// to Email you the new password of your account
    /// 
    /// and update the new password in the Database
    /// 
    /// </summary>

    public partial class ForgetPassword : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;


        }

        protected void btn_send_Click(object sender, EventArgs e)
        {

            if (IsValid)
            {
                try
                {
                    string selectedmail = txt_email.Text;
                    Session.Add("Email", selectedmail);
                   
                    user selected = lm.users.SingleOrDefault(u => u.email == selectedmail);
                    if (selected != null)
                    {
                        lbl_confirmation.Text = "An Email with your new password will be sent to your email address";
                        int userid = selected.id;
                        Session.Add("userId", userid);

                        btn_login.Visible = true;
                        SendMail(txt_email.Text);


                    }
                    else
                    {
                        lbl_confirmation.Text = "The Email Address you entered is invalid";
                    }
                }

                catch (Exception ex)
                {
                    //Response.Redirect("~/ErrorPage/error.aspx");

                    //Console.WriteLine(ex.Message);
                    //Console.WriteLine(" u did something wrong");
                }
            }

        }
        public void SendMail(string MailTo)
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(new MailAddress(MailTo));

            mail.From = new MailAddress("ahmed.m.salem2020@gmail.com");
            mail.Subject = "new Password";
            //Generate a new password 
            //string NewPassword = System.Web.Security.Membership.GeneratePassword(8, 3);
            // store that password in the user's info so they can use it during next login 
            int userid = int.Parse(Session["userId"].ToString());

            user selected = lm.users.SingleOrDefault(u => u.id == userid);

            int NewPassword = 1234;

            string Body = "Your new password is: " + NewPassword;
            mail.Body = Body;

            selected.password = NewPassword.ToString();
            lm.SaveChanges();


            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential("ahmed.m.salem2020@gmail.com", "password");

            //Or your Smtp Email ID and Password
            smtp.EnableSsl = true;
            smtp.Send(mail);
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/Login.aspx");

        }


        #region test code
        //public void SendMail(string MailTo)
        //{
        //    MailMessage mail = new MailMessage();
        //    mail.To.Add(new MailAddress(MailTo));

        //    mail.From = new MailAddress("admin@gmail.com");
        //    mail.Subject = "Renew Password";

        //    //Generate a new password 
        //    string NewPassword = System.Web.Security.Membership.GeneratePassword(3, 3);


        //    // store that password in the user's info so they can use it during next login 
        //    int UserID;
        //    int.TryParse(Session["user"].ToString(), out UserID);


        //    string Body = "Your new password is: " + NewPassword;
        //    mail.Body = Body;
        //    SmtpClient smtp = new SmtpClient();
        //    smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
        //    smtp.Port = 587;
        //    smtp.UseDefaultCredentials = false;
        //    smtp.Credentials = new System.Net.NetworkCredential
        //    ("admin@gmail.com", "1234");

        //    //Or your Smtp Email ID and Password
        //    smtp.EnableSsl = true;
        //    smtp.Send(mail);
        //}

        #endregion


        #region forget pass code 


        //DataTable dt = new DataTable();
        //int result;
        //result= DB.DBMange.user.checkUserNameAndEmail(txt_mail.Text,"");
        //                if (result == 2)
        //                {
        //                    dt = DB.DBMange.user.getpassword(txt_mail.Text);
        //                    string password = dt.Rows[0]["password"].ToString();
        //MailMessage msg = new MailMessage("fatmamohmed254@gmail.com", txt_mail.Text);
        //msg.Subject = "forget you password";
        //                    msg.Body = "password: " + password;
        //                    SmtpClient msgclient = new SmtpClient("smtp.gmail.com", 587);
        //msgclient.UseDefaultCredentials = false;
        //                    msgclient.Credentials = new NetworkCredential("fatmamohmed254@gmail.com","FFayed1995");
        //msgclient.EnableSsl = true;
        //              try

        //            {
        //                msgclient.Send(msg);

        //            }
        //            catch  (Exception ex)
        //            {
        //                throw (ex);

        //            }
        //            Response.Redirect("~/login.aspx");
        //        }
        //        else
        //            lbl_status.Text = "wrong mail";




        #endregion


    }
}