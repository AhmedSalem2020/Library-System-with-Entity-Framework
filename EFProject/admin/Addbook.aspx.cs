using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFProject.admin
{
    public partial class Addbook : System.Web.UI.Page
    {
        
        LibararyModel lm = new LibararyModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                ddl_author.DataSource = lm.authors.Select(c =>new {fName= c.fName, id=c.id}).ToList();
                ddl_author.DataTextField = "fName";
                ddl_author.DataValueField = "id";

                ddl_author.DataBind();

                ddl_publisher.DataSource = lm.publishers.Select(c =>new  { name=c.name ,id=c.id }).ToList();

                ddl_publisher.DataTextField = "name";
                ddl_publisher.DataValueField = "id";
                ddl_publisher.DataBind();

                ddl_category .DataSource = lm.categories.Select(c => c.name).ToList();
                ddl_category.DataBind();
            }
        }

        protected void btn_addbook_Click(object sender, EventArgs e)
        {
            string Title = txt_title.Text;
            string Author = ddl_author.SelectedValue;
            string Publisher = ddl_publisher.SelectedValue;
            DateTime PublishingDate = DateTime.Parse(txt_pubdate.Text);
            string Category = ddl_category.SelectedValue;
            int Edition = int.Parse(txt_edition.Text);
            //int Pages = int.Parse(txt_pages.Text);
            int NoOfCopies = int.Parse(txt_noofcopies.Text);
            int Available = NoOfCopies;
            string Description = txt_desc.Text;

            
            book checkebook = lm.books.FirstOrDefault(b => b.title == Title);
            if (checkebook == null)
            {
                book b = new book();
                b.title = Title;
                b.name = Title;
                b.autherId = int.Parse(Author);
                b.publisherId = int.Parse(Publisher);
                b.publishDate = (PublishingDate);
                b.categoryName = Category;
                b.copiesCount = NoOfCopies;
                b.source = Description;
                b.availableCopies = Available;
                b.isDeleted = false;
                b.joinDate = DateTime.Now;
                
                lm.books.Add(b);
                lm.SaveChanges();
                txt_desc.Text="";
                txt_edition.Text="";
                txt_noofcopies.Text="";
                txt_pubdate.Text="";
                txt_title.Text= "";
            }
            else
            {
                
            }

        }

    }
}
