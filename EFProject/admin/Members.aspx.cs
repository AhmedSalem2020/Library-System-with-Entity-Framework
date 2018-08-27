using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFProject.admin
{
    public partial class MemberBlockReport : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    lbl_Member.Text = lm.users.Where(m => m.role == null && m.isDeleted == false).Count().ToString();

                    gv_Members.DataSource = lm.users.Where(m => m.role == null && m.isDeleted == false).Select(m => new { m.id, m.userName, m.JoinDate, m.email }).ToList();
                    gv_Members.DataBind();

                    var query = lm.users.Where(m => m.role == null && m.isDeleted == false).OrderByDescending(m => m.JoinDate);
                    gv_MemberJoinDate.DataSource = query.Select(m => new { m.userName, m.email, m.JoinDate }).ToList();
                    gv_MemberJoinDate.DataBind();

                    lbl_MemberBlock.Text = lm.users.Where(m => m.role == null && m.isDeleted == true).Count().ToString();

                    gv_memberBlock.DataSource = lm.users.Where(u => u.member.isBlock == true).Select(u => new { u.userName, u.email, u.fName, u.lName, u.address, u.JoinDate, u.phone }).ToList();
                    gv_memberBlock.DataBind();

                    gv_MembersEndDate.DataSource = lm.users.Where(u => u.member.isBlock == true).Select(u => new { u.id, u.userName, u.email, u.member.endDate }).OrderByDescending(u => u.endDate).ToList();
                    gv_MembersEndDate.DataBind();
                }
                catch(Exception ex)
                {
                    ex.Message.ToString();
                }
            }
        }

        protected void gv_Members_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(gv_Members.DataKeys[gv_Members.SelectedIndex].Value.ToString());
                var query = lm.users.Where(u => u.id == id).Select(us => new { us.id, us.fName, us.lName, us.address, us.birthDate, us.phone }).ToList();

                gv_MembersData.DataSource = query;
                gv_MembersData.DataBind();
            }
            catch(Exception ex)
            {
                ex.Message.ToString();
            }
        }
    }
}