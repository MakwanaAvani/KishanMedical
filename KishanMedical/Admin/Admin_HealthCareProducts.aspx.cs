using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Admin_HealthCareProducts : System.Web.UI.Page
{
    SqlConnection con =  new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\KishanDB.mdf;Integrated Security=True;User Instance=True");
    
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("~/Admin/Admin_login.aspx");
        }
        else if (!IsPostBack)
        {
            Bind();
        }
    }
    public void Bind()
    {
        SqlCommand cmd = new SqlCommand("select * from HealthCareProduct", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds, "HealthCareProduct");

        P_GridView.DataSource = ds;
        P_GridView.DataBind();
    }

    protected void addProduct_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Admin_AddHealthCareProduct.aspx");
    }
    protected void P_GridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        P_GridView.EditIndex = -1;
        Bind();
    }
    protected void P_GridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = e.RowIndex;

        GridViewRow row = (GridViewRow)P_GridView.Rows[index];

        Label pid = (Label)row.FindControl("lblpid");

        SqlCommand cmd = new SqlCommand("delete from HealthCareProduct where Pro_id=" + Convert.ToInt32(pid.Text) + "", con);
        con.Open();
        int res = cmd.ExecuteNonQuery();
        con.Close();

        if (res == 1)
        {
            Response.Write("<script>alert('Deletion done!')</script>");
        }
        Bind();
    }
    protected void P_GridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        P_GridView.EditIndex = e.NewEditIndex;
        Bind();
    }
    protected void P_GridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int index = e.RowIndex;

        GridViewRow row = (GridViewRow)P_GridView.Rows[index];

        Label pid = (Label)row.FindControl("lblpid");
        TextBox pname = (TextBox)row.FindControl("txtpname");
        TextBox pbrand = (TextBox)row.FindControl("txtpbrand");
        TextBox pprice = (TextBox)row.FindControl("txtpprice");
        TextBox pdesc = (TextBox)row.FindControl("txtpdesc");
        
        FileUpload fu = (FileUpload)row.FindControl("fu1");

        if (fu.HasFile)
        {
            string filename = fu.PostedFile.FileName;
            Server.HtmlEncode(fu.FileName);
            string ext = System.IO.Path.GetExtension(filename);
            if ((ext == ".jpg") || (ext == ".jpeg") || (ext == ".png") || (ext == ".bmp"))
            {
                fu.SaveAs(Server.MapPath("~/Admin/Image/" + filename));
                //string file = System.IO.Path.Combine(Server.MapPath("~/Admin/Image/"), fu.FileName);
                //fu.SaveAs(file);
                con.Open();
                SqlCommand cmd = new SqlCommand("update HealthCareProduct set Pro_name=@Pro_name, Pro_brand=@Pro_brand,Pro_img=@Pro_img,Pro_price=@Pro_price,Pro_desc=@Pro_desc where Pro_id='" + Convert.ToInt32(pid.Text) + "'", con);
                cmd.Parameters.AddWithValue("@Pro_name", pname.Text);
                cmd.Parameters.AddWithValue("@Pro_brand", pbrand.Text);
                cmd.Parameters.AddWithValue("@Pro_price", pprice.Text);
                cmd.Parameters.AddWithValue("@Pro_desc", pdesc.Text);
               
                cmd.Parameters.AddWithValue("@Pro_img", "~/Admin/Image/" + filename);
                int res = cmd.ExecuteNonQuery();
                con.Close();
                if (res == 1)
                {
                    Response.Redirect("~/Admin/Admin_HealthCareProducts.aspx");
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                }
            }
            P_GridView.EditIndex = -1;
            Bind();
        }
    }

    protected void P_GridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        P_GridView.PageIndex = e.NewPageIndex;
        Bind();
    }
    protected void addProduct_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Admin_AddHealthCareProduct.aspx");
    }
}