﻿using EFProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ui.admin
{
    public partial class salem : System.Web.UI.Page
    {
        LibararyModel lm = new LibararyModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            var data = lm.authors.Where(x => x.isDeleted == false);
            GridView1.DataSource = data.ToList();
            GridView1.DataBind();

        }
    }
}