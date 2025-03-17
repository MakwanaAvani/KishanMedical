using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Registration_Cilent : System.Web.UI.Page
{

    String constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\KishanDB.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnreg_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        con.Open();
        cmd = new SqlCommand("insert into RegistrationClient(Reg_email,Reg_pass)values(@Reg_email,@Reg_pass)", con);

        cmd.Parameters.AddWithValue("@Reg_email", txtremail.Text);
        cmd.Parameters.AddWithValue("@Reg_pass", txtrpassw.Text);

        int ans = cmd.ExecuteNonQuery();
        if (ans > 0)
            lblmsg.Text = "Registration succesfully...";
        else
            lblmsg.Text = "Registration properly....";
        txtremail.Text = "";
        txtrpassw.Text = "";
       // Response.Redirect("Client_Home.aspx");
    }
}