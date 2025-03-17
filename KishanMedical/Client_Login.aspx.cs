using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Client_Login : System.Web.UI.Page
{
    String conn= "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\KishanDB.mdf;Integrated Security=True;User Instance=True";
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
       
        txtemail.Focus();
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {

       
        //String myquery = "select * from logindetails where username='" + TextBox1.Text + "'";
        SqlConnection scon = new SqlConnection(conn);
        String myquery = ("select * from RegistrationClient where Reg_email='" + txtemail.Text + "' and Reg_pass='" + txtpass.Text + "'");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String uname;
        String pass;
        if (ds.Tables[0].Rows.Count > 0)
        {
            uname = ds.Tables[0].Rows[0]["Reg_email"].ToString();
            pass = ds.Tables[0].Rows[0]["Reg_pass"].ToString();

            scon.Close();
            if (uname == txtemail.Text && pass == txtpass.Text)
            {
                Session["username"] = uname;
                Session["buyitems"] = null;
                fillsavedCart();
                Response.Redirect("Client_Home.aspx");
            }
            else
            {
                Label3.Text = "Invalid Username or Password - Relogin with Correct Username Password";
            }
        }
        else
        {
            Label3.Text = "Invalid Username or Password - Relogin with Correct Username Password";
        }
    }
    private void fillsavedCart()
    {
        DataTable dt = new DataTable();
        DataRow dr;
        dt.Columns.Add("sno");
        dt.Columns.Add("Pro_id");
        dt.Columns.Add("Pro_name");
        dt.Columns.Add("Pro_quantity");
        dt.Columns.Add("Pro_price");
        dt.Columns.Add("Pro_totalprice");
        dt.Columns.Add("Pro_img");

        String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\KishanDB.mdf;Integrated Security=True;User Instance=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select * from AddCart where Reg_email='" + Session["username"].ToString() + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            int i = 0;
            int counter = ds.Tables[0].Rows.Count;
            while (i < counter)
            {
                dr = dt.NewRow();
                dr["sno"] = i + 1;
                dr["Pro_id"] = ds.Tables[0].Rows[i]["Pro_id"].ToString();
                dr["Pro_name"] = ds.Tables[0].Rows[i]["Pro_name"].ToString();
                dr["Pro_img"] = ds.Tables[0].Rows[i]["Pro_img"].ToString();
                dr["Pro_quantity"] = "1";
                dr["Pro_price"] = ds.Tables[0].Rows[i]["Pro_price"].ToString();
                int price1 = Convert.ToInt16(ds.Tables[0].Rows[i]["Pro_price"].ToString());
                int quantity1 = Convert.ToInt16(ds.Tables[0].Rows[i]["Pro_quantity"].ToString());
                int totalprice1 = price1 * quantity1;
                dr["Pro_totalprice"] = totalprice1;
                dt.Rows.Add(dr);
                i = i + 1;
            }

        }
        else
        {
            Session["buyitems"] = null;
        }
        Session["buyitems"] = dt;
    }

    protected void btncncl_Click(object sender, EventArgs e)
    {
        txtemail.Text = "";
        txtpass.Text = "";
    }
    protected void lbtnreg_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Registration_Cilent.aspx");
    }
}
