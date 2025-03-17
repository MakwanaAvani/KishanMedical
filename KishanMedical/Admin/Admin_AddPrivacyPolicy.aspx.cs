using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Admin_AddPrivacyPolicy : System.Web.UI.Page
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
        string filename = P_FileUpload.PostedFile.FileName;
        Server.HtmlEncode(P_FileUpload.FileName);
        string ext = System.IO.Path.GetExtension(filename);
        if ((ext == ".jpg") || (ext == ".jpeg") || (ext == ".png") || (ext == ".bmp"))
        {
            P_FileUpload.SaveAs(Server.MapPath("~/Admin/Image/" + filename));
            con = new SqlConnection(constr);
            con.Open();
            cmd = new SqlCommand("insert into Privacy_Policy(P_desc1,P_desc2,P_desc3,P_img)values(@P_desc1,@P_desc2,@P_desc3,@P_img) ", con);

            cmd.Parameters.AddWithValue("@P_desc1", txtdesc1.Text);
            cmd.Parameters.AddWithValue("@P_desc2", txtdesc2.Text);
            cmd.Parameters.AddWithValue("@P_desc3", txtdesc3.Text);
            cmd.Parameters.AddWithValue("@P_img", "~/Admin/Image/" + filename);

            int ans = cmd.ExecuteNonQuery();
            if (ans > 0)
                lblmsg.Text = "insert description succesfully...";
            else
                lblmsg.Text = "insert description properly....";
            txtdesc1.Text = "";
            Response.Redirect("Admin_HealthArticles.aspx");

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