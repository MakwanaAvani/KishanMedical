using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Admin_Admin_login : System.Web.UI.Page
{
    string conn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\KishanDB.mdf;Integrated Security=True;User Instance=True";
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblErrorMessage.Visible = false;
        txtunm.Focus();
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String unm = txtunm.Text;
        String psw = txtpass.Text;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = ("select * from Admin_login where A_name='" + txtunm.Text + "' and A_passw='" + txtpass.Text + "'");
        cmd.Connection = con;
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Session["User"] = unm;
            dr.Read();
            Session["User"] = dr[0].ToString();
            Response.Redirect("~/Admin/Admin_Home.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username or Password')</script>");
        }
        
        con.Close();
        Response.Redirect("~/Admin/Admin_Home.aspx");

    }
    protected void btncncl_Click(object sender, EventArgs e)
    {
        txtunm.Text = "";
        txtpass.Text = "";
    }
}