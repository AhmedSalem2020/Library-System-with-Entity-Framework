using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFProject.admin
{
    public partial class UpdateProfile : System.Web.UI.Page
    {
        LibararyModel libModel = new LibararyModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                try
                {
                    if (Session["userId"] != null)
                    {
                        int id = (int)Session["userId"];
                        var query = libModel.users.Single(u =>u.id==id);
                        txt_UserName.Text = query.userName;
                        txt_Email.Text = query.email;
                        txt_Fname.Text = query.fName;
                        txt_Lname.Text = query.lName;
                        txt_Address.Text = query.address;
                        txt_Phone.Text = query.phone.ToString();

                        //img_Image.ImageUrl = query.image.ToString();
                         img_Image.ImageUrl = "data:image;base64," + Convert.ToBase64String(query.image);
                    }
                }
                catch (Exception ex)
                {
                    ex.Message.ToString();
                }
            }
        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            try
            {
                if (IsValid)
                {
                    if (Session["userId"] != null)
                    {
                        int id = (int)Session["userId"];

                        user us = libModel.users.Single(u =>  u.id == id);
                        //employee emp = libModel.employees.Single(em => em.userId == us.id);

                        var query = libModel.users.Where(q => q.userName == txt_UserName.Text).Count();
                        var query1 = libModel.users.Where(q1 => q1.email == txt_Email.Text).Count();
                        var query2 = libModel.users.Where(q2 => q2.phone == txt_Phone.Text).Count();
                        if (query == 0 || txt_UserName.Text == us.userName)
                        {
                            if (query1 == 0 || txt_Email.Text == us.email)
                            {
                                if (query2 == 0 || txt_Phone.Text == us.phone)
                                {
                                    us.userName = txt_UserName.Text;
                                    us.email = txt_Email.Text;
                                    us.fName = txt_Fname.Text;
                                    us.lName = txt_Lname.Text;
                                    us.address = txt_Address.Text;
                                    us.phone = (txt_Phone.Text);

                                    //string path = "~/Image/" + fu_Image.FileName;
                                    //fu_Image.SaveAs(Server.MapPath(path));

                                    string filename = System.IO.Path.GetFileName(fu_Image.FileName);
                                    fu_Image.PostedFile.SaveAs(Server.MapPath("Image/" + filename));
                                    System.Drawing.Image img = System.Drawing.Image.FromFile(Server.MapPath("Image/" + filename));
                                    byte[] path = imgToByteArray(img);
                                    us.image = path;
                                    libModel.SaveChanges();
                                    lbl_Status.Text = "Save Success";
                                    Response.Redirect("~/admin/ShowProfileBasicAdmin.aspx");
                                }
                                else
                                {
                                    lbl_ValidPhone.Text = "Phone is Valid";
                                }
                            }
                            else
                            {
                                lbl_ValidEmail.Text = "Email is Valid";
                            }
                        }
                        else
                        {
                            lbl_ValidUserName.Text = "UserName is Valid";
                        }
                    }
                   
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();

            }
        }
        public byte[] imgToByteArray(System.Drawing.Image img)
        {
            using (MemoryStream mstream = new MemoryStream())
            {
                img.Save(mstream, img.RawFormat);
                return mstream.ToArray();
            }
        }
        //protected void lbtn_Logout_Click(object sender, EventArgs e)
        //{
        //    Session["userId"] = null;
        //    Response.Redirect("../user/Login.aspx");
        //}

        //protected void lbtn_Profile_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/admin/ShowProfileBasicAdmin.aspx");
        //}

        protected void btn_Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/ShowProfileBasicAdmin.aspx");
        }
        
    }
}