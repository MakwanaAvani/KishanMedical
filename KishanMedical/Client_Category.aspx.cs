using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_Category : System.Web.UI.Page
{
    String constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\KishanDB.mdf;Integrated Security=True;User Instance=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from Category", constr);
        DataSet ds = new DataSet();
        da.Fill(ds);
        dl1.DataSource = ds;
        dl1.DataBind();
        if (!IsPostBack)
        {
            if (Session["pro"] != null)
            {
                string nm = Session["pro"].ToString();
                SqlDataAdapter da2 = new SqlDataAdapter("select * from HealthCareProduct where Cat_name='" + nm + "'", constr);
                DataSet ds2 = new DataSet();
                da2.Fill(ds2);
                //DataListDisplayItem.DataSource = ds2;
                //DataListDisplayItem.DataBind();

            }
        }

    }
    protected void dl1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string nm = e.CommandArgument.ToString();
        Session["pro"] = nm;

        Response.Redirect("~/Client_HealthCareProducts.aspx");

    }
  
}