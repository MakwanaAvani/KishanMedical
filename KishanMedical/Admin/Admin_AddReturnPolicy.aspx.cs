using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_Admin_AddReturnPolicy : System.Web.UI.Page
{
    String constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\KishanDB.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtdesc1.Focus();
        if (Session["User"] == null)
        {
            Response.Redirect("~/Admin/Admin_login.aspx");
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        con.Open();
        cmd = new SqlCommand("insert into Return_Policy(Rp_desc1,Rp_desc2,Rp_desc3,Rp_desc4,Rp_desc5)values(@Rp_desc1,@Rp_desc2,@Rp_desc3,@Rp_desc4,@Rp_desc5)", con);

        cmd.Parameters.AddWithValue("@Rp_desc1", txtdesc1.Text);
        cmd.Parameters.AddWithValue("@Rp_desc2", txtdesc2.Text);
        cmd.Parameters.AddWithValue("@Rp_desc3", txtdesc3.Text);
        cmd.Parameters.AddWithValue("@Rp_desc4", txtdesc4.Text);
        cmd.Parameters.AddWithValue("@Rp_desc5", txtdesc5.Text);
       
        int ans = cmd.ExecuteNonQuery();
        if (ans > 0)
            lblmsg.Text = "insert description succesfully...";
        else
            lblmsg.Text = "insert description properly....";
        txtdesc1.Text = "";
        Response.Redirect("Admin_ReturnPolicy.aspx");
    }
    protected void btnclr_Click(object sender, EventArgs e)
    {
        txtdesc1.Text = "";
        txtdesc2.Text = "";
        txtdesc3.Text = "";
        txtdesc4.Text = "";
        txtdesc5.Text = "";
        txtdesc1.Focus();
    }
}