﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin_Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session["User"] = null;
        Session.Remove("User");
        Session.RemoveAll();
        Response.Redirect("~/Admin/Admin_Home.aspx");
        
    }
}