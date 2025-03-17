using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Admin_AddFranchise : System.Web.UI.Page
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
        string filename = Fr_FileUpload.PostedFile.FileName;
        Server.HtmlEncode(Fr_FileUpload.FileName);
        string ext = System.IO.Path.GetExtension(filename);
        if ((ext == ".jpg") || (ext == ".jpeg") || (ext == ".png") || (ext == ".bmp"))
        {
            Fr_FileUpload.SaveAs(Server.MapPath("~/Admin/Image/" + filename));
            con = new SqlConnection(constr);
            con.Open();
            cmd = new SqlCommand("insert into Franchise_info(Fr_desc1,Fr_desc2,Fr_desc3,Fr_img)values(@Fr_desc1,@Fr_desc2,@Fr_desc3,@Fr_img) ", con);

            cmd.Parameters.AddWithValue("@Fr_desc1", txtdesc1.Text);
            cmd.Parameters.AddWithValue("@Fr_desc2", txtdesc2.Text);
            cmd.Parameters.AddWithValue("@Fr_desc3", txtdesc3.Text);
            cmd.Parameters.AddWithValue("@Fr_img", "~/Admin/Image/" + filename);

            int ans = cmd.ExecuteNonQuery();
            if (ans > 0)
                lblmsg.Text = "insert description succesfully...";
            else
                lblmsg.Text = "insert description properly....";
            txtdesc1.Text = "";
            Response.Redirect("Admin_Franchise.aspx");

        }
    }
    protected void btnclr_Click(object sender, EventArgs e)
    {
        txtdesc1.Text = "";
        txtdesc2.Text = "";
        txtdesc3.Text = "";
        txtdesc1.Focus();
    }
    
}