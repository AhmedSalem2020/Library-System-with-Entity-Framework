using EFProject.Data;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace EFProject.admin
{
    public partial class empMembers : System.Web.UI.Page
    {

        LibararyModel lm = new LibararyModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            //var data = lm.members.Where(x => x.user.isDeleted == false&&x.user.role ==null);
            //lsv_members.DataSource = data.ToList();
            //lsv_members.DataBind();

        }

        [WebMethod]
        public static List<UserDto> getMembers()
        {
            //using Newtonsoft.Json
            LibararyModel lm = new LibararyModel();
            lm.Configuration.ProxyCreationEnabled = false;

            List<UserDto> z = lm.users.Where(x => x.isDeleted == false && x.role == null).Select(x => new UserDto
            {
                address = x.address,
                birthDate = x.birthDate,
                email = x.email,
                lName = x.lName,
                fName = x.fName,
                member = x.member,
                image=x.image,
                phone = x.phone,
                userName = x.userName
            }).ToList();
            // var list = JsonConvert.SerializeObject(z, Newtonsoft.Json.Formatting.None, new JsonSerializerSettings() { ReferenceLoopHandling = ReferenceLoopHandling.Ignore });

            return z.ToList();

        }

        [WebMethod]
        public static string deleteMembers(string userName)
        {
            LibararyModel lm = new LibararyModel();
            lm.Configuration.ProxyCreationEnabled = false;

            var user = lm.users.Where(x => x.userName == userName).FirstOrDefault();

            user.isDeleted = true;

            lm.SaveChanges();

            return user.isDeleted.ToString();
        }

        [WebMethod]
        public static string blockMembers(string userName)
        {
            LibararyModel lm = new LibararyModel();
            lm.Configuration.ProxyCreationEnabled = false;
            var member = lm.members.Where(x => x.user.userName == userName).FirstOrDefault();
            if (member.isBlock)
            {
                member.isBlock = false;
                member.endDate = null;
            }
            else
            {
                member.isBlock = true;
                member.endDate = DateTime.Now.AddDays(7);
            }
            lm.SaveChanges();
            return member.isBlock.ToString();
        }

        [WebMethod]
        //[ScriptMethod(UseHttpGet = true)]
        public static int checkUserName(string userName)
        {
            LibararyModel lm = new LibararyModel();
            lm.Configuration.ProxyCreationEnabled = false;
            var count = lm.members.Where(x => x.user.userName == userName).Count();
           
            return count;
        }
        [WebMethod]
        //[ScriptMethod(UseHttpGet = true)]
        public static int checkemail(string email)
        {
            LibararyModel lm = new LibararyModel();
            lm.Configuration.ProxyCreationEnabled = false;
            var count = lm.members.Where(x => x.user.email == email).Count();

            return count;
        }
        [WebMethod]
        public static int addMembers(UserInput user)
        {
            LibararyModel lm = new LibararyModel();
            lm.Configuration.ProxyCreationEnabled = false;
            var newuser = new user();
            newuser.firstLogin = true;
            newuser.isDeleted = false;
            newuser.JoinDate = DateTime.Now;
            //newuser.member=new member();
            //newuser.member.isBlock = false;
            newuser.email = user.email;
            newuser.fName = user.fName;
            newuser.lName = user.lName;
            newuser.userName = user.userName;
            newuser.password = user.userName;
            newuser.birthDate = user.birthDate;
            newuser.image = Convert.FromBase64String(user.profile);

            newuser = lm.users.Add(newuser);
            lm.SaveChanges();

            newuser.member = new member();
            newuser.member.isBlock = false;

            lm.SaveChanges();
            return newuser.id;
        }



    }
}