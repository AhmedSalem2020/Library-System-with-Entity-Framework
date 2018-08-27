using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFProject.admin
{
    public partial class UpdateEmployee : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                var query = lm.users.Where(emp => emp.role == Role.Employee && emp.isDeleted == false).Select(emp => new { EmpFullName = emp.fName + " " + emp.lName, emp.id });
                lsb_employee.DataSource = query.ToList();
                lsb_employee.DataTextField = "EmpFullName";
                lsb_employee.DataValueField = "id";
                lsb_employee.DataBind();
                lsb_employee.SelectedIndex = 0;
                ListBox1_SelectedIndexChanged(null, null);
                


            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(lsb_employee.SelectedValue);
            user updatedUser = lm.users.Single(emp => emp.id == id);
            txt_username.Text = updatedUser.userName;
            txt_mail.Text = updatedUser.email;
            txt_fname.Text = updatedUser.fName;
            txt_lname.Text = updatedUser.lName;
            txt_birthdate.Text = updatedUser.birthDate.ToString();
            txt_address.Text = updatedUser.address;
            txt_phone.Text =updatedUser.phone;
            lbl_id.Text = id.ToString();
            
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            int id = int.Parse(lsb_employee.SelectedValue);
            user updatedUser = lm.users.Single(emp => emp.id == id);
            user checkupdateduser = lm.users.FirstOrDefault(emp => emp.email == txt_mail.Text && emp.id != id);
            if (checkupdateduser == null)
            {
                user checkusername = lm.users.FirstOrDefault(emp => emp.userName == txt_username.Text && emp.id != id);
                if (checkusername == null)
                {
                    updatedUser.userName = txt_username.Text;
                    updatedUser.email = txt_mail.Text;
                    updatedUser.fName = txt_fname.Text;
                    updatedUser.lName = txt_lname.Text;
                    updatedUser.birthDate = DateTime.Parse(txt_birthdate.Text);
                    updatedUser.address = txt_address.Text;
                    updatedUser.phone = txt_phone.Text;
                    lm.SaveChanges();

                }
                else
                {
                    lbl_hint1.Text = "User Name already exist";
                }
            }
            else
            {
                lbl_hint2.Text = "Mail already exist ";
            }
        }

        protected void btn_remove_Click(object sender, EventArgs e)
        {
            int id = int.Parse(lbl_id.Text);
            user deleteddUser = lm.users.Single(emp => emp.id == id);
            deleteddUser.isDeleted = true;
            lm.SaveChanges();
            var query = lm.users.Where(emp => emp.role == Role.Employee && emp.isDeleted==false).Select(emp => new { EmpFullName = emp.fName + " " + emp.lName, emp.id });
            lsb_employee.DataSource = query.ToList();
            lsb_employee.DataTextField = "EmpFullName";
            lsb_employee.DataValueField = "id";
            lsb_employee.DataBind();



        }
    }
}