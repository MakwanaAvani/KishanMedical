using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_AddDiagnosticTests : System.Web.UI.Page
{
    String constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\KishanDB.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        txttitle.Focus();
        if (Session["User"] == null)
        {
            Response.Redirect("~/Admin/Admin_login.aspx");
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        string filename = Dt_FileUpload.PostedFile.FileName;
        Server.HtmlEncode(Dt_FileUpload.FileName);
        string ext = System.IO.Path.GetExtension(filename);
        if ((ext == ".jpg") || (ext == ".jpeg") || (ext == ".png") || (ext == ".bmp"))
        {
            Dt_FileUpload.SaveAs(Server.MapPath("~/Admin/Image/" + filename));
            con = new SqlConnection(constr);
            con.Open();
            cmd = new SqlCommand("insert into Diagnostic_Tests(Dt_title,Dt_desc1,Dt_desc2,Dt_img)values(@Dt_title,@Dt_desc1,@Dt_desc2,@Dt_img)", con);

            cmd.Parameters.AddWithValue("@Dt_title", txttitle.Text);
            cmd.Parameters.AddWithValue("@Dt_desc1", txtdesc1.Text);
            cmd.Parameters.AddWithValue("@Dt_desc2", txtdesc2.Text);
            cmd.Parameters.AddWithValue("@Dt_img", "~/Admin/Image/" + filename);

            int ans = cmd.ExecuteNonQuery();
            if (ans > 0)
                lblmsg.Text = "insert description succesfully...";
            else
                lblmsg.Text = "insert description properly....";
            txtdesc1.Text = "";
            Response.Redirect("Admin_DiagnosticTests.aspx");

        }
    }
    protected void btnclr_Click(object sender, EventArgs e)
    {

    }
}