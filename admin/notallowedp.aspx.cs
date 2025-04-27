using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_notallowedp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["SiteDatabaseConnectionString"].ConnectionString;
        con.Open();
        string pid = Request.QueryString["postid"];
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "UPDATE  post_tbl SET allowed=1 WHERE postId = @postid";
        cmd.Parameters.AddWithValue("@postid", pid);
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        DataList1.DataBind();
        DataList2.DataBind();
        
    }
}