using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Admin_AddHome : System.Web.UI.Page
{
    String constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\KishanDB.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtdes.Focus();
        if (Session["User"] == null)
        {
            Response.Redirect("~/Admin/Admin_login.aspx");
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        string filename = H_FileUpload.PostedFile.FileName;
        Server.HtmlEncode(H_FileUpload.FileName);
        string ext = System.IO.Path.GetExtension(filename);
        if ((ext == ".jpg") || (ext == ".jpeg") || (ext == ".png") || (ext == ".bmp"))
        {
            H_FileUpload.SaveAs(Server.MapPath("~/Admin/Image/" + filename));
            con = new SqlConnection(constr);
            con.Open();
            cmd = new SqlCommand("insert into Home(H_desc,H_img)values(@H_desc,@H_img)", con);

            cmd.Parameters.AddWithValue("@H_desc", txtdes.Text);
            cmd.Parameters.AddWithValue("@H_img", "~/Admin/Image/" + filename);

            int ans = cmd.ExecuteNonQuery();
            if (ans > 0)
                lblmsg.Text = "insert description succesfully...";
            else
                lblmsg.Text = "insert description properly....";
            txtdes.Text = "";
            Response.Redirect("Admin_Home.aspx");
        }
    }
    protected void btnclr_Click(object sender, EventArgs e)
    {
        txtdes.Text = "";
        txtdes.Focus();
    }
}