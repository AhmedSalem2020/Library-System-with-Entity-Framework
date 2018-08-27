using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFProject.admin
{
    public partial class UpdateBook : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            
            if (!IsPostBack)
            {
                var bookList = lm.books.Where(bo=>bo.isDeleted!=true).ToList();
                lb_books.DataSource = bookList;
                lb_books.DataTextField = "title";
                lb_books.DataValueField = "id";
                lb_books.DataBind();
                //lb_books.SelectedIndex = 0;
                //lb_books_SelectedIndexChanged(null, null);
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                String title = txt_title.Text;
                int nOfCopies = int.Parse(txt_noofcopies.Text);
                int avilable = int.Parse(txt_available.Text);
                String des = txt_desc.Text;
                int id = int.Parse(lbl_id.Text);
                var checkBook = lm.books.SingleOrDefault(bo => bo.title == title && bo.id != id);
                if (checkBook == null)
                {
                    var updBook = lm.books.SingleOrDefault(bo => bo.id == id);
                    updBook.title = title;
                    updBook.availableCopies = avilable;
                    updBook.copiesCount = nOfCopies;
                    updBook.source = des;

                    lm.SaveChanges();

                    var bookList = lm.books.Where(bo => bo.isDeleted != true).ToList();
                    lb_books.DataSource = bookList;
                    lb_books.DataTextField = "title";
                    lb_books.DataValueField = "id";
                    lb_books.DataBind();


                }



            }
        }

        protected void lb_books_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(lb_books.SelectedValue);
            var selectedBook = lm.books.SingleOrDefault(b => b.id == id);
            txt_title.Text = selectedBook.title;
            txt_available.Text = selectedBook.availableCopies.ToString();
            txt_noofcopies.Text = selectedBook.copiesCount.ToString();
            txt_desc.Text = selectedBook.source;

            lbl_id.Text = selectedBook.id.ToString();
        }

        protected void btn_remove_Click(object sender, EventArgs e)
        {
            int id = int.Parse(lbl_id.Text);
            var delBook = lm.books.SingleOrDefault(bo => bo.id == id);


            delBook.isDeleted = true;
            lm.SaveChanges();
            txt_available.Text = "";
            txt_desc.Text = "";
            txt_noofcopies.Text = "";
            txt_title.Text = "";

            var bookList = lm.books.Where(bo => bo.isDeleted != true).ToList();
            lb_books.DataSource = bookList;
            lb_books.DataTextField = "title";
            lb_books.DataValueField = "id";
            lb_books.DataBind();
        }
    }
}