using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Admin_AddTermsAndConditions : System.Web.UI.Page
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
        string filename = T_FileUpload.PostedFile.FileName;
        Server.HtmlEncode(T_FileUpload.FileName);
        string ext = System.IO.Path.GetExtension(filename);
        if ((ext == ".jpg") || (ext == ".jpeg") || (ext == ".png") || (ext == ".bmp") || (ext == ".JPG"))
        {
            T_FileUpload.SaveAs(Server.MapPath("~/Admin/Image/" + filename));
            con = new SqlConnection(constr);
            con.Open();
            cmd = new SqlCommand("insert into TermsAndCondition(T_desc1,T_desc2,T_desc3,T_desc4,T_desc5,T_desc6,T_desc7,T_img)values(@T_desc1,@T_desc2,@T_desc3,@T_desc4,@T_desc5,@T_desc6,@T_desc7,@T_img) ", con);

            cmd.Parameters.AddWithValue("@T_desc1", txtdesc1.Text);
            cmd.Parameters.AddWithValue("@T_desc2", txtdesc2.Text);
            cmd.Parameters.AddWithValue("@T_desc3", txtdesc3.Text);
            cmd.Parameters.AddWithValue("@T_desc4", txtdesc4.Text);
            cmd.Parameters.AddWithValue("@T_desc5", txtdesc5.Text);
            cmd.Parameters.AddWithValue("@T_desc6", txtdesc6.Text);
            cmd.Parameters.AddWithValue("@T_desc7", txtdesc7.Text);
           
            cmd.Parameters.AddWithValue("@T_img", "~/Admin/Image/" + filename);

            int ans = cmd.ExecuteNonQuery();
            if (ans > 0)
                lblmsg.Text = "insert description succesfully...";
            else
                lblmsg.Text = "insert description properly....";
            txtdesc1.Text = "";
            Response.Redirect("Admin_TermsAndConditions.aspx");

        }
    }
    protected void btnclr_Click(object sender, EventArgs e)
    {
        txtdesc1.Text = "";
        txtdesc2.Text = "";
        txtdesc3.Text = "";
        txtdesc4.Text = "";
        txtdesc5.Text = "";
        txtdesc6.Text = "";
        txtdesc7.Text = "";
        txtdesc1.Focus();
    }
}