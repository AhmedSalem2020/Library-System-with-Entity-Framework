using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFProject.admin
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<string> GetResult(string pre)
        {
            List<string> res = new List<string>();
            using (LibararyModel lb = new LibararyModel())
            {

                //res = string.Join(lb.users.Where(emp => emp.fName.Contains(pre) && emp.role == Role.Employee).Select(emp => new { Fullname = emp.fName + " " + emp.lName }).ToList());
                 res = (from a in lb.users where (a.fName.Contains(pre)|| a.lName.Contains(pre) )&&a.role==Role.Employee select a.fName + " " + a.lName).ToList();


            }
            return res;
        }
        protected void btn_go_Click(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static List<UserSearchDto> GetMyResult()
        {
            var lm = new LibararyModel();
            lm.Configuration.ProxyCreationEnabled = false;

            List<UserSearchDto> z = lm.users.Where(x => x.isDeleted == false && x.role == Role.Employee)
                .Select(x => new UserSearchDto
                {
                lName = x.fName+" "+x.lName,
              
                userName = x.userName
            }).ToList();

            return z.ToList();
        }
    }
}