﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin_AboutUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("~/Admin/Admin_login.aspx");
        }

    }
    protected void addAboutUs_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Admin_AddAboutUs.aspx");
    }
}