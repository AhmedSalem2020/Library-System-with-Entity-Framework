using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace EFProject
{
    public partial class Addemployee : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            

        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                string Email = txt_mail.Text;
                string Fname = txt_fname.Text; ;
                string Lname = txt_lname.Text;
                string Birthdate = txt_birthdate.Text;
                string Address = txt_address.Text;
                string Phone = txt_phone.Text;
                string userName = txt_username.Text;

                user checkemail = lm.users.FirstOrDefault(emp => emp.email == Email  );
                if (checkemail == null)
                {
                    user checkeuser = lm.users.FirstOrDefault(emp => emp.userName == userName);
                    if (checkeuser == null)
                    {
                        user u = new user();
                        u.role = Role.Employee;
                        u.email = Email;
                        u.fName = Fname;
                        u.lName = Lname;
                        u.birthDate = DateTime.Parse(Birthdate);
                        u.address = Address;
                        u.phone = Phone;
                        u.userName = userName;
                        u.isDeleted = false;
                        u.JoinDate = DateTime.Now;

                        lm.users.Add(u);
                        lm.SaveChanges();
                        Response.Redirect("ViewProfile.aspx");
                    }
                    else
                    {
                        lbl_hint2.Text = "This User Name already exist please choose another one ";
                    }
                }
                else
                {
                    lbl_hint.Text = "This Email already exist please insert another Email ";
                }
            }
        }
    }
}