using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFProject.admin
{
    public partial class Users : System.Web.UI.Page
    {
        static LibararyModel lm = new LibararyModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                try
                {
                    gv_Admin.DataSource = lm.users.Where(u => u.role == Role.Admin && u.isDeleted == false).Select(u => new { u.id, u.userName, u.email, u.fName, u.lName, u.JoinDate, u.phone, u.employee.salary }).ToList();
                    gv_Admin.DataBind();

                    gv_Employee.DataSource = lm.users.Where(u => u.role == Role.Employee && u.isDeleted == false).Select(u => new { u.id, u.userName, u.email, u.fName, u.lName, u.JoinDate, u.phone, u.employee.salary }).ToList();
                    gv_Employee.DataBind();

                    gv_Member.DataSource = lm.users.Where(u => u.role == null && u.isDeleted == false).Select(u => new { u.id, u.userName, u.email, u.fName, u.lName, u.JoinDate, u.phone}).ToList();
                    gv_Member.DataBind();
                }
                catch (Exception ex)
                {
                    ex.Message.ToString();
                }
            }
        }
        protected void gv_Admin_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                gv_Admin.EditIndex = e.NewEditIndex;
                gv_Admin.DataSource = lm.users.Where(u => u.role == Role.Admin && u.isDeleted == false).Select(u => new { u.id, u.userName, u.email, u.fName, u.lName, u.JoinDate, u.phone, u.employee.salary }).ToList();
                gv_Admin.DataBind();
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
        }

        protected void gv_Admin_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int id = (int)gv_Admin.DataKeys[e.RowIndex].Value;
                lm.users.Single(u => u.id == id).isDeleted = true;
                gv_Admin.DataSource = lm.users.Where(u => u.role == Role.Admin && u.isDeleted == false).Select(u => new { u.id, u.userName, u.email, u.fName, u.lName, u.JoinDate, u.phone, u.employee.salary }).ToList();
                gv_Admin.DataBind();
                lm.SaveChanges();
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
        }

        protected void gv_Admin_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            try
            {
                gv_Admin.EditIndex = -1;
                gv_Admin.DataSource = lm.users.Where(u => u.role == Role.Admin && u.isDeleted == false).Select(u => new { u.id, u.userName, u.email, u.fName, u.lName, u.JoinDate, u.phone, u.employee.salary }).ToList();
                gv_Admin.DataBind();
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
        }

        protected void gv_Admin_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                string username = ((TextBox)gv_Admin.Rows[e.RowIndex].FindControl("txt_UserName")).Text;
                string email = ((TextBox)gv_Admin.Rows[e.RowIndex].FindControl("txt_Email")).Text;
                string fname = ((TextBox)gv_Admin.Rows[e.RowIndex].FindControl("txt_Fname")).Text;
                string lname = ((TextBox)gv_Admin.Rows[e.RowIndex].FindControl("txt_Lname")).Text;
                string phone = ((TextBox)gv_Admin.Rows[e.RowIndex].FindControl("txt_Phone")).Text;
                DateTime hierdate = Convert.ToDateTime(((TextBox)gv_Admin.Rows[e.RowIndex].FindControl("txt_HierDate")).Text);
                decimal salary = decimal.Parse(((TextBox)gv_Admin.Rows[e.RowIndex].FindControl("txt_Salary")).Text);

                int id = (int)gv_Admin.DataKeys[e.RowIndex].Value;
                lm.users.Single(u => u.id == id).userName = username;
                lm.users.Single(u => u.id == id).email = email;
                lm.users.Single(u => u.id == id).fName = fname;
                lm.users.Single(u => u.id == id).lName = lname;
                lm.users.Single(u => u.id == id).JoinDate = hierdate;
                lm.users.Single(u => u.id == id).phone = phone;
                lm.employees.Single(u => u.userId == id).salary = salary;

                lm.SaveChanges();
                gv_Admin.EditIndex = -1;
                gv_Admin.DataSource = lm.users.Where(u => u.role == Role.Admin && u.isDeleted == false).Select(u => new { u.id, u.userName, u.email, u.fName, u.lName, u.JoinDate, u.phone, u.employee.salary }).ToList();
                gv_Admin.DataBind();
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
        }


        protected void gv_Employee_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                gv_Employee.EditIndex = e.NewEditIndex;
                gv_Employee.DataSource = lm.users.Where(u => u.role == Role.Employee && u.isDeleted == false).Select(u => new { u.id, u.userName, u.email, u.fName, u.lName, u.JoinDate, u.phone, u.employee.salary }).ToList();
                gv_Employee.DataBind();
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
        }

        protected void gv_Employee_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int id = (int)gv_Employee.DataKeys[e.RowIndex].Value;
                lm.users.Single(u => u.id == id).isDeleted = true;
                gv_Employee.DataSource = lm.users.Where(u => u.role == Role.Employee && u.isDeleted == false).Select(u => new { u.id, u.userName, u.email, u.fName, u.lName, u.JoinDate, u.phone, u.employee.salary }).ToList();
                gv_Employee.DataBind();
                lm.SaveChanges();
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
        }

        protected void gv_Employee_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            try
            {
                gv_Employee.EditIndex = -1;
                gv_Employee.DataSource = lm.users.Where(u => u.role == Role.Employee && u.isDeleted == false).Select(u => new { u.id, u.userName, u.email, u.fName, u.lName, u.JoinDate, u.phone, u.employee.salary }).ToList();
                gv_Employee.DataBind();
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
        }

        protected void gv_Employee_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                string username = ((TextBox)gv_Employee.Rows[e.RowIndex].FindControl("txt_UserName")).Text;
                string email = ((TextBox)gv_Employee.Rows[e.RowIndex].FindControl("txt_Email")).Text;
                string fname = ((TextBox)gv_Employee.Rows[e.RowIndex].FindControl("txt_Fname")).Text;
                string lname = ((TextBox)gv_Employee.Rows[e.RowIndex].FindControl("txt_Lname")).Text;
                string phone = ((TextBox)gv_Employee.Rows[e.RowIndex].FindControl("txt_Phone")).Text;
                DateTime hierdate = Convert.ToDateTime(((TextBox)gv_Employee.Rows[e.RowIndex].FindControl("txt_HierDate")).Text);
                decimal salary = decimal.Parse(((TextBox)gv_Employee.Rows[e.RowIndex].FindControl("txt_Salary")).Text);

                int id = (int)gv_Employee.DataKeys[e.RowIndex].Value;
                lm.users.Single(u => u.id == id).userName = username;
                lm.users.Single(u => u.id == id).email = email;
                lm.users.Single(u => u.id == id).fName = fname;
                lm.users.Single(u => u.id == id).lName = lname;
                lm.users.Single(u => u.id == id).JoinDate = hierdate;
                lm.users.Single(u => u.id == id).phone = phone;
                lm.employees.Single(u => u.userId == id).salary = salary;

                lm.SaveChanges();
                gv_Employee.EditIndex = -1;
                gv_Employee.DataSource = lm.users.Where(u => u.role == Role.Employee && u.isDeleted == false).Select(u => new { u.id, u.userName, u.email, u.fName, u.lName, u.JoinDate, u.phone, u.employee.salary }).ToList();
                gv_Employee.DataBind();
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
        }
        
        protected void gv_Member_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int id = (int)gv_Member.DataKeys[e.RowIndex].Value;
                lm.users.Single(u => u.id == id).isDeleted = true;
                gv_Member.DataSource = lm.users.Where(u => u.role == null && u.isDeleted == false).Select(u => new { u.id, u.userName, u.email, u.fName, u.lName, u.JoinDate, u.phone}).ToList();
                gv_Member.DataBind();
                lm.SaveChanges();
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
        }
    }
}