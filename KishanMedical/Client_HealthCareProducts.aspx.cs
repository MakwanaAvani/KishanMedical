using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_HealthCareProducts : System.Web.UI.Page
{
    String constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\KishanDB.mdf;Integrated Security=True;User Instance=True";
    DataTable dt;
    static int aa = 0;
    private string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        if (dt != null)
        {

           Label3.Text = dt.Rows.Count.ToString();
        }
        else
        {
            Label3.Text = "0";

        }
        SqlDataAdapter da = new SqlDataAdapter("select * from Category", constr);
        DataSet ds = new DataSet();
        da.Fill(ds);
        //dl1.DataSource = ds;
        //dl1.DataBind();
        if (!IsPostBack)
        {
            if (Session["pro"] != null)
            {
                string nm = Session["pro"].ToString();

                SqlDataAdapter da2 = new SqlDataAdapter("select * from HealthCareProduct where Cat_name='" + nm + "'", constr);
                DataSet ds2 = new DataSet();
                da2.Fill(ds2);
                DataList1.DataSource = ds2;
                DataList1.DataBind();

            }
        }

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "addtocart")
        {

            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
            string nm = e.CommandArgument.ToString();
            Session["pro"] = id;
            Response.Redirect("Client_HealthCareProducts.aspx");
        }
    }
}