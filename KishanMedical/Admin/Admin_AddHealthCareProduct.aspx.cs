using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_Admin_AddHealthCareProduct : System.Web.UI.Page
{
    String constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\KishanDB.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtdes.Focus();
        if (Session["User"] == null)
        {
            Response.Redirect("~/Admin/Admin_login.aspx");
        }
        ddlistcat.Focus();
        if (!IsPostBack)
        {
            con = new SqlConnection(constr);
            string str1 = "select * from Category";
            cmd = new SqlCommand(str1, con);
            con.Open();
            dr = cmd.ExecuteReader();
            ddlistcat.DataSource = dr;
            ddlistcat.DataTextField = "Cat_name";
            ddlistcat.DataValueField = "Cat_name";
            ddlistcat.DataBind();
            ddlistcat.Items.Insert(0, new ListItem("--Select--", "0"));
            con.Close();
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        try
        {
            string filename = P_FileUpload.PostedFile.FileName;
            Server.HtmlEncode(P_FileUpload.FileName);
            string ext = System.IO.Path.GetExtension(filename);
            if ((ext == ".jpg") || (ext == ".jpeg") || (ext == ".png") || (ext == ".bmp") || (ext == ".webp"))
            {
                P_FileUpload.SaveAs(Server.MapPath("~/Admin/Image/" + filename));
                con = new SqlConnection(constr);
                con.Open();
                cmd = new SqlCommand("Insert into HealthCareProduct(Cat_name,Pro_name,Pro_brand,Pro_price,Pro_img,Pro_desc)values(@Cat_name,@Pro_name,@Pro_brand,@Pro_price,@Pro_img,@Pro_desc)", con);
                cmd.Parameters.AddWithValue("@Cat_name", ddlistcat.Text);
                cmd.Parameters.AddWithValue("@Pro_name", txtnm.Text);
                cmd.Parameters.AddWithValue("@Pro_brand", txtbrand.Text);
                cmd.Parameters.AddWithValue("@Pro_price", txtprice.Text);
                cmd.Parameters.AddWithValue("@Pro_img", "~/Admin/Image/" + filename);
                cmd.Parameters.AddWithValue("@Pro_desc", txtdes.Text);
                cmd.ExecuteNonQuery();
                Response.Redirect("~/Admin/Admin_HealthCareProducts.aspx");
                con.Close();
                Response.Redirect("~/Admin/Admin_HealthCareProducts.aspx");
            }
            else
            {
                lblmsg.Text = "Invalid Image Format";
            }
        }
        catch (Exception ex)
        {
            btnadd.Text = ex.Message;
        }
    }
    protected void btncan_Click(object sender, EventArgs e)
    {
        ddlistcat.SelectedIndex = 0;
        lblmsg.Text = "";
        txtnm.Text = "";
        txtdes.Text = "";
        ddlistcat.Focus();
    }
    protected void backProduct_Click(object sender, EventArgs e)
    {
        ddlistcat.SelectedIndex = 0;
        lblmsg.Text = "";
        txtnm.Text = "";
        txtdes.Text = "";
        ddlistcat.Focus();
        Response.Redirect("~/Admin/Admin_HealthCareProducts.aspx");
    }
    
}