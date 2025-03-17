using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_Consultation : System.Web.UI.Page
{
    String constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\KishanDB.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {


        con = new SqlConnection(constr);
        con.Open();
        cmd = new SqlCommand("insert into Consultation(Co_fnm,Co_lnm,Co_gender,Co_complaint,Co_allergies,Co_otherque,Co_phn,Co_email)values(@Co_fnm,@Co_lnm,@Co_gender,@Co_complaint,@Co_allergies,@Co_otherque,@Co_phn,@Co_email)", con);

        cmd.Parameters.AddWithValue("@Co_fnm", txtCofname.Text);
        cmd.Parameters.AddWithValue("@Co_lnm", txtColname.Text);
        if (rdomale.Checked == true)
        {
            cmd.Parameters.AddWithValue("@Co_gender", rdomale.Text);
        }
        else if (rdofemale.Checked == true)
        {
            cmd.Parameters.AddWithValue("@Co_gender", rdofemale.Text);
        }
        else if (rdoother.Checked == true)
        {
            cmd.Parameters.AddWithValue("@Co_gender", rdoother.Text);
        }
        cmd.Parameters.AddWithValue("@Co_complaint", txtCocomplaint.Text);
        cmd.Parameters.AddWithValue("@Co_allergies", txtCoallergies.Text);
        cmd.Parameters.AddWithValue("@Co_otherque", txtCoque.Text);
        cmd.Parameters.AddWithValue("@Co_phn", txtCophn.Text);
        cmd.Parameters.AddWithValue("@Co_email", txtCoemail.Text);



        int ans = cmd.ExecuteNonQuery();
        if (ans > 0)
        {
            lblmsg.Text = "insert description succesfully...";
            txtCoallergies.Text = "";
            txtCocomplaint.Text = "";
            txtCoemail.Text = "";
            txtCofname.Text = "";
            txtColname.Text = "";
            txtCophn.Text = "";
            txtCoque.Text = "";
            rdomale.Checked = true;
        }
        else
            lblmsg.Text = "insert description properly....";

        Response.Redirect("Admin_HealthArticles.aspx");


    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtCoallergies.Text = "";
        txtCocomplaint.Text = "";
        txtCoemail.Text = "";
        txtCofname.Text = "";
        txtColname.Text = "";
        txtCophn.Text = "";
        txtCoque.Text = "";
        rdomale.Checked = true;
    }
}