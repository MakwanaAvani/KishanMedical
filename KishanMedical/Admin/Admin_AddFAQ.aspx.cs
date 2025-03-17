using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Admin_AddFAQ : System.Web.UI.Page
{
    String constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\KishanDB.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtque.Focus();
        if (Session["User"] == null)
        {
            Response.Redirect("~/Admin/Admin_login.aspx");
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        con.Open();
        cmd = new SqlCommand("insert into FAQ(Faq_que,Faq_ans)values(@Faq_que,@Faq_ans)", con);

        cmd.Parameters.AddWithValue("@Faq_que", txtque.Text);
        cmd.Parameters.AddWithValue("@Faq_ans", txtans.Text);

        int ans = cmd.ExecuteNonQuery();
        if (ans > 0)
            lblmsg.Text = "insert description succesfully...";
        else
            lblmsg.Text = "insert description properly....";
        txtque.Text = "";
        Response.Redirect("Admin_FAQ.aspx");
    }
    protected void btnclr_Click(object sender, EventArgs e)
    {
        txtque.Text = "";
        txtans.Text = "";
        txtque.Focus();
    }
}