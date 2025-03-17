using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Admin_AddAboutUs : System.Web.UI.Page
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
        string filename = A_FileUpload.PostedFile.FileName;
        Server.HtmlEncode(A_FileUpload.FileName);
        string ext = System.IO.Path.GetExtension(filename);
        if ((ext == ".jpg") || (ext == ".jpeg") || (ext == ".png") || (ext == ".bmp") || (ext == ".JPG"))
        {
            A_FileUpload.SaveAs(Server.MapPath("~/Admin/Image/" + filename));
            con = new SqlConnection(constr);
            con.Open();
            cmd = new SqlCommand("insert into AboutUs(A_desc,A_img)values(@A_desc,@A_img)", con);

            cmd.Parameters.AddWithValue("@A_desc", txtdes.Text);
            cmd.Parameters.AddWithValue("@A_img", "~/Admin/Image/" + filename);

            int ans = cmd.ExecuteNonQuery();
            if (ans > 0)
                lblmsg.Text = "insert description succesfully...";
            else
                lblmsg.Text = "insert description properly....";
            txtdes.Text = "";
            Response.Redirect("Admin_AboutUs.aspx");

        }
    }
    protected void btnclr_Click(object sender, EventArgs e)
    {
        txtdes.Text = "";
        txtdes.Focus();
    }
}