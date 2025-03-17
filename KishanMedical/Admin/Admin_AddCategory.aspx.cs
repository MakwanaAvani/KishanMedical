using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Admin_AddCategory : System.Web.UI.Page
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
        string filename = Cat_FileUpload.PostedFile.FileName;
        Server.HtmlEncode(Cat_FileUpload.FileName);
        string ext = System.IO.Path.GetExtension(filename);
        if ((ext == ".jpg") || (ext == ".jpeg") || (ext == ".png") || (ext == ".bmp"))
        {
            Cat_FileUpload.SaveAs(Server.MapPath("~/Admin/Image/" + filename));
            con = new SqlConnection(constr);
            con.Open();
            string str = "insert into Category(Cat_name,Cat_img) values(@Cat_name,@Cat_img)";
            cmd = new SqlCommand(str, con);

            cmd.Parameters.AddWithValue("@Cat_name", txtname.Text);
            cmd.Parameters.AddWithValue("@Cat_img", "~/Admin/Image/" + filename);

            int ans = cmd.ExecuteNonQuery();
            if (ans > 0)
                lblmsg.Text = "insert record succesfully...";
            else
                lblmsg.Text = "insert record properly....";
          
            txtname.Text = "";
            con.Close();
            Response.Redirect("Admin_Category.aspx");
        }
    }
    protected void btncan_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        //ddlist.SelectedIndex = 0;
        txtname.Focus();
    }
}