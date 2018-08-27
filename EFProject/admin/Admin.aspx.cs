using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFProject.admin
{
    public partial class Admin : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    lbl_Admin.Text = lm.users.Where(a => a.role == Role.Admin && a.isDeleted == false).Count().ToString();

                    gv_Admins.DataSource = lm.users.Where(a => a.role == Role.Admin && a.isDeleted == false).Select(a => new { a.userName, a.email, a.fName, a.lName, a.address, a.phone }).ToList();
                    gv_Admins.DataBind();

                    gv_AdminsJoinDate.DataSource = lm.users.Where(a => a.role == Role.Admin && a.isDeleted == false).OrderByDescending(a => a.JoinDate).Select(a => new { a.userName, a.JoinDate, a.email }).ToList();
                    gv_AdminsJoinDate.DataBind();

                    gv_AdminsSalary.DataSource = lm.users.Where(a => a.role == Role.Admin && a.isDeleted == false).OrderByDescending(a => a.employee.salary).Select(a => new { a.userName, a.email, a.employee.salary }).ToList();
                    gv_AdminsSalary.DataBind();

                    lbl_AdminBlock.Text = lm.users.Where(a => a.role == Role.Admin && a.isDeleted == true).Count().ToString();

                    gv_AdminBlock.DataSource = lm.users.Where(a => a.role == Role.Admin && a.isDeleted == true).Select(a => new { a.userName, a.email, a.fName, a.lName, a.address, a.phone,a.employee.salary }).ToList();
                    gv_AdminBlock.DataBind();
                }
                catch (Exception ex)
                {
                    ex.Message.ToString();
                }
            }
        }
    }
}