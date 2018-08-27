using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Data.SqlTypes;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFProject.admin
{
    public partial class AddAdminUser : System.Web.UI.Page
    {
        
       static LibararyModel lm = new LibararyModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        [WebMethod]
        [ScriptMethod]
        public static void AddAdmins(string userName, string email, string fName, string lName, DateTime birthDate, string address, string phone, string password,DateTime joinDate,decimal salary)
        {
            try
            {
                // joinDate = DateTime.Now;
                // var X = DateTime.Now.Day + '-' + DateTime.Now.Month + '-' + DateTime.Now.Year;
                //JoinDate = Convert.ToDateTime(JoinDate.ToShortDateString());
                
                user us = new user() { userName = userName, fName = fName, lName = lName, email = email, role = Role.Admin,firstLogin=true, address = address, password = password, birthDate = birthDate, phone = phone, JoinDate = joinDate };
                us = lm.users.Add(us);
                lm.SaveChanges();
                //int userId = lm.users.OrderByDescending(uid => uid.id).First().id;

                employee emp = new employee() { userId = us.id, salary = salary };
                lm.employees.Add(emp);
                lm.SaveChanges();
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
        }
    }
}