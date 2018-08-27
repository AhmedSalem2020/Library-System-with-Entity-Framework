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
    /// This page shows the Borroing Books for each member 
    /// 
    /// and also you can filter it by month, year or Both 
    /// 
    /// and you will see the result on a grid view.
    /// 
    /// </summary>


    public partial class BorrowingBooks : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();

        protected void Page_Load(object sender, EventArgs e)
        {

            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                // To handel the errors 
                try
                {
                    if (Session["userId"] != null)
                    {
                      

                       int userId = int.Parse(Session["userId"].ToString());

                        // fill the drop down list of year
                        for (int i = DateTime.Now.Year; i > DateTime.Now.AddYears(-40).Year; i--)
                    {
                        ddl_year.Items.Add(i.ToString());
                    }

                    // Fill the drop down list of month with text and value via list item 
                    ListItem l0 = new ListItem("Choose", "0");
                    ddl_month.Items.Add(l0);

                    ListItem l1 = new ListItem("Jaunuary", "1");
                    ddl_month.Items.Add(l1);

                    ListItem l2 = new ListItem("Febuary", "2");
                    ddl_month.Items.Add(l2);

                    ListItem l3 = new ListItem("March", "3");
                    ddl_month.Items.Add(l3);

                    ListItem l4 = new ListItem("April", "4");
                    ddl_month.Items.Add(l4);

                    ListItem l5 = new ListItem("May", "5");
                    ddl_month.Items.Add(l5);

                    ListItem l6 = new ListItem("June", "6");
                    ddl_month.Items.Add(l6);

                    ListItem l7 = new ListItem("July", "7");
                    ddl_month.Items.Add(l7);

                    ListItem l8 = new ListItem("Augest", "8");
                    ddl_month.Items.Add(l8);

                    ListItem l9 = new ListItem("September", "9");
                    ddl_month.Items.Add(l9);

                    ListItem l10 = new ListItem("October", "10");
                    ddl_month.Items.Add(l10);

                    ListItem l11 = new ListItem("November", "11");
                    ddl_month.Items.Add(l11);

                    ListItem l12 = new ListItem("December", "12");
                    ddl_month.Items.Add(l12);

                    // Fill the Grid view with the current borrowed books
                    int month = DateTime.Now.Month;
                    int id = (int)Session["userId"];

                    var qq = lm.users.SingleOrDefault(x => x.id == id).userBooks.Where(x => x.status == BookStatus.isborrowking && x.startDate.Month == month).Select(x => new
                    {
                        //Fname =  x.user.fName,
                        booktit= x.book.title,
                        statdat= x.startDate.Month,
                        x.returnDate

                    });
                    ListView1.DataSource = qq.ToList();
                    ListView1.DataBind();
                    //GridView1.DataSource = qq.ToList();
                    //GridView1.DataBind();

                }

                else
                {
                    Response.Redirect("~/User/Login.aspx",false);

                }


            }

                    //    // catch the error
                catch (Exception ex)
                {
                    Response.Redirect("~/ErrorPage/error.aspx");
                    //Console.WriteLine(ex.Message);
                    //Console.WriteLine("something wrong happened");
                }

                #region test code
                //var qq = lm.users.SingleOrDefault(x => x.id == 8).userBooks.Where(x => x.status == BookStatus.isborrowking).Select(x=>new {
                //    x.deliveredDate,
                //    x.user.fName,
                //    x.book.title,
                //    x.startDate.Month

                //});

                //GridView1.DataSource = qq.ToList();
                //GridView1.DataBind();


                //var data = lm.userBook.Where(x => x. == false);
                //GridView1.DataSource = data.ToList();
                //GridView1.DataBind();
                #endregion
            }

            #region test code2
            //protected void Button1_Click(object sender, EventArgs e)
            //{


            //int month =int.Parse( ddl_month.SelectedValue);
            //var qq = lm.users.SingleOrDefault(x => x.id == 8).userBooks.Where(x => x.status == BookStatus.isborrowking && x.startDate.Month==month).Select(x => new
            //{
            //    x.deliveredDate,
            //    x.user.fName,
            //    x.book.title,
            //    x.startDate.Month
            //});

            //GridView1.DataSource = qq.ToList();
            //GridView1.DataBind();

            //}
            #endregion
        }
        // to get the borrowing books by month
        protected void ddl_month_SelectedIndexChanged(object sender, EventArgs e)
        {
            int month = int.Parse(ddl_month.SelectedValue);
            int id = (int)Session["userId"];
            var qq = lm.users.SingleOrDefault(x => x.id == id).userBooks.Where(x => x.status == BookStatus.isborrowking && x.startDate.Month == month).Select(x => new
            {
                // the data i will show on drid view
               //Fname= x.user.fName,
               booktit= x.book.title,
               statdat= x.startDate.Month,
                x.returnDate
                
            });

            // to bind on grid view
            ListView1.DataSource = qq.ToList();
            ListView1.DataBind();

            //GridView1.DataSource = qq.ToList();
            //GridView1.DataBind();

           
        }

        // to get the borrowing books by year
        protected void ddl_year_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = (int)Session["userId"];

            int year = int.Parse(ddl_year.SelectedItem.Text);
            var qq = lm.users.SingleOrDefault(x => x.id == id).userBooks.Where(x => x.status == BookStatus.isborrowking && x.startDate.Year == year).Select(x => new
            {
                // the data i will show on drid view
                //Fname  =x.user.fName,
                booktit=x.book.title,
                statdat=x.startDate.Year,
                x.returnDate
            });

            // to bind on grid view
            ListView1.DataSource = qq.ToList();
            ListView1.DataBind();

            //GridView1.DataSource = qq.ToList();
            //GridView1.DataBind();


        }
    

            // to get the borrowing books by month and year
            protected void Button1_Click(object sender, EventArgs e)
            {

                int month = DateTime.Parse(txt_both.Text).Month;
                int year = DateTime.Parse(txt_both.Text).Year;
            int id = (int)Session["userId"];

            var qq = lm.users.SingleOrDefault(x => x.id == id).userBooks.Where(x => x.status == BookStatus.isborrowking && x.startDate.Month == month && x.startDate.Year == year).Select(x => new
                {
                // the data i will show on drid view
                //Fname = x.user.fName,
                booktit = x.book.title,
                statdat = x.startDate.Year,
                x.returnDate
            });

            // to bind on grid view
            ListView1.DataSource = qq.ToList();
            ListView1.DataBind();

            //GridView1.DataSource = qq.ToList();
            //    GridView1.DataBind();


            }

        
    }
}