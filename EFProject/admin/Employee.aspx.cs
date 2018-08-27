using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFProject.admin
{
    public partial class Employee : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    lbl_EmployeeCount.Text = lm.users.Where(emp => emp.role == Role.Employee && emp.isDeleted == false).Count().ToString();

                    gv_Employees.DataSource = lm.users.Where(emp => emp.role == Role.Employee && emp.isDeleted == false).Select(emp => new { emp.userName, emp.email, emp.fName, emp.lName, emp.JoinDate, emp.phone, emp.address }).ToList();
                    gv_Employees.DataBind();

                    gv_EmployeesJoinDate.DataSource = lm.users.Where(emp => emp.role == Role.Employee && emp.isDeleted == false).OrderByDescending(emp => emp.JoinDate).Select(emp => new { emp.userName, emp.email, emp.JoinDate }).ToList();
                    gv_EmployeesJoinDate.DataBind();

                    gv_EmployeesSalary.DataSource = lm.users.Where(emp => emp.role == Role.Employee && emp.isDeleted == false).OrderByDescending(emp => emp.employee.salary).Select(emp => new { emp.userName, emp.email, emp.employee.salary }).ToList();
                    gv_EmployeesSalary.DataBind();

                    lbl_EmployeeBlock.Text = lm.users.Where(emp => emp.role == Role.Employee && emp.isDeleted == true).Count().ToString();

                    gv_EmployeeBlock.DataSource = lm.users.Where(emp => emp.role == Role.Employee && emp.isDeleted == true).Select(emp => new { emp.userName, emp.email, emp.fName, emp.lName, emp.JoinDate, emp.phone, emp.address,emp.employee.salary }).ToList();
                    gv_EmployeeBlock.DataBind();

                }
                catch (Exception ex)
                {
                    ex.Message.ToString();
                }
            }
        }
    }
}