using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_FeedBack : System.Web.UI.Page
{
    String constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\KishanDB.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtemail.Text = "";
        txtfeedback.Text = "";
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        con.Open();
        cmd = new SqlCommand("insert into Feedback(F_rate,F_Comm,F_email)values(@F_rate,@F_Comm,@F_email)", con);
        if (rdb1.Checked == true)
        {
            cmd.Parameters.AddWithValue("@F_rate", rdb1.Text);
        }
        else if (rdb2.Checked == true)
        {
            cmd.Parameters.AddWithValue("@F_rate", rdb2.Text);
        }
        cmd.Parameters.AddWithValue("@F_Comm", txtfeedback.Text);
        cmd.Parameters.AddWithValue("@F_email", txtemail.Text);
        int ans = cmd.ExecuteNonQuery();
        if (ans > 0)
            lblmsg.Text = "insert description succesfully...";
        else
            lblmsg.Text = "insert description properly....";
        txtemail.Text = "";
        Response.Redirect("Client_FeedBack.aspx");


    }

}
