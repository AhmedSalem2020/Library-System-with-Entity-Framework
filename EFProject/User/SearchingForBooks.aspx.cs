using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EFProject.Data;

namespace EFProject.User
{

    /// <summary>
    /// 
    /// This page to Search for any book in the library filtered by 
    /// 
    /// year , category , publisher , author,Title by drop dowm=n list
    /// 
    /// and availability (it means the available copies) by write the book name in the text and click
    /// 
    /// to the search buttom.
    /// 
    /// and you will see the result on a grid view.
    /// 
    /// </summary>

    public partial class SearchingForBooks : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                if (Session["userId"] != null)
                {


                    int userId = int.Parse(Session["userId"].ToString());


                    // fill ddl_year
                    for (int i = DateTime.Now.Year; i > DateTime.Now.AddYears(-40).Year; i--)
                    {
                        ddl_year.Items.Add(i.ToString());
                    }

                    // fill ddl_category
                    var category = lm.categories.Select(cat => cat.name).ToList();

                    ddl_Cat.DataSource = category.ToList();

                    ddl_Cat.DataBind();

                    // fill ddl_Author
                    var author = lm.authors.Select(au => au.fName).ToList();

                    ddl_author.DataSource = author.ToList();

                    ddl_author.DataBind();


                    // fill ddl_Publisher
                    var publisher = lm.publishers.Select(pub => pub.name).ToList();

                    ddl_publisher.DataSource = publisher.ToList();

                    ddl_publisher.DataBind();


                    // fill ddl_title
                    var title = lm.books.Select(tit => tit.title).ToList();

                    ddl_title.DataSource = title.ToList();

                    ddl_title.DataBind();
                }
                else
                {
                    Response.Redirect("~/User/Login.aspx");

                }

            }
        }

            // Search By year 
            protected void ddl_year_SelectedIndexChanged(object sender, EventArgs e)
            {

                int year = int.Parse(ddl_year.SelectedItem.Text);
                var qq = lm.books.Where(x => x.joinDate.Year == year).Select(x => new
                {

                    // the data i will show on drid view
                    x.publisher,
                    x.title,
                    x.name,
                    x.categoryName,
                    

      
                    x.publishDate
                });

                // to bind on grid view
                GridView1.DataSource = qq.ToList();
                GridView1.DataBind();
            }



            // Search By Category 
            protected void ddl_cat_SelectedIndexChanged(object sender, EventArgs e)
            {
                string category = ddl_Cat.SelectedItem.Text;
                var query = lm.books.Where(cat => cat.categoryName == category).Select(x => new
                {
                    // the data i will show on drid view
                    x.publisher,
                    x.title,
                    x.name,
                    
                    x.joinDate,
                    x.publishDate

                });

                // to bind on grid view
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();

            }

            // Search By Author
            protected void ddl_author_SelectedIndexChanged(object sender, EventArgs e)
            {

                string author = ddl_author.SelectedItem.Text;
                var query = lm.books.Where(au => au.author.fName == author).Select(x => new
                {
                    // the data i will show on drid view
                    x.publisher,
                    x.title,
                    x.name,
                    x.categoryName,
                   
                    x.publishDate

                });

                // to bind on grid view
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();

            }

            // Search By Publisher
            protected void ddl_publisher_SelectedIndexChanged(object sender, EventArgs e)
            {

                string publisher = ddl_publisher.SelectedItem.Text;
                var query = lm.books.Where(pub => pub.publisher.name == publisher).Select(x => new
                {

                    // the data i will show on drid view
                    x.title,
                    x.name,
                    x.categoryName,
                   
                    x.publishDate

                });

                // to bind on grid view
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();

            }

            //Search By Title
            protected void ddl_title_SelectedIndexChanged(object sender, EventArgs e)
            {
                string title = ddl_title.SelectedItem.Text;

                //var query = lm.books.Where(tit => tit.title.Contains(title)).Select(x => new
                
                var query = lm.books.Where(tit => tit.title == title).Select(x => new
                {

                    // the data i will show on drid view
                    x.publisher,
                    x.name,
                    x.categoryName,
                   
                    x.publishDate

                });

                // to bind on grid view
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }


        // Search By Availability
        protected void btn_search_Click(object sender, EventArgs e)
        {
            string available = txt_ava.Text;
            var query = lm.books.Where(tit => tit.name == available).Select(x => new
            {
                // the data i will show on drid view
                x.name,
                
                x.availableCopies
            });

            // to bind on grid view
            GridView1.DataSource = query.ToList();
            GridView1.DataBind();
        }
        
    }
}