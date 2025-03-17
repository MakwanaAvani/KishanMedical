using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Admin_AddContactUs : System.Web.UI.Page
{
    String constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\KishanDB.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con;
    SqlCommand cmd;
 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("~/Admin/Admin_login.aspx");
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        con.Open();
        cmd = new SqlCommand("insert into ContactUs(C_desc,C_addr,C_phn,C_hours,C_email)values(@C_desc,@C_addr,@C_phn,@C_hours,@C_email)", con);
        cmd.Parameters.AddWithValue("@C_desc", txtdes.Text);
        cmd.Parameters.AddWithValue("@C_addr", txtaddr.Text);
        cmd.Parameters.AddWithValue("@C_phn", txtphn.Text);
        cmd.Parameters.AddWithValue("@C_hours", txthours.Text);
        cmd.Parameters.AddWithValue("@C_email", txtemail.Text);
        int ans = cmd.ExecuteNonQuery();
        if (ans > 0)
            lblmsg.Text = "insert description succesfully...";
        else
            lblmsg.Text = "insert description properly....";
        txtdes.Text = "";
        Response.Redirect("Admin_ContactUs.aspx");
        con.Close();
    }
    protected void btnclr_Click(object sender, EventArgs e)
    {
        txtdes.Text = "";
        txtaddr.Text = "";
        txtphn.Text = "";
        txthours.Text = "";
        txtemail.Text = "";
        txtdes.Focus();
    }
}