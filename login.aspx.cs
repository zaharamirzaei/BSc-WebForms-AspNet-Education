using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;




public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void loginbtn_Click(object sender, EventArgs e)
    {
     


             SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["SiteDatabaseConnectionString"].ConnectionString;

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "select * from usertbl where useremail='" + email.Text + "'and userpass= '" + pass.Text + "'";

        SqlDataReader dr;
        con.Open();
        dr = cmd.ExecuteReader();
       if(dr.HasRows)
        {
            Session["login"] = 1;
            dr.Read();
            Session["useremail"] = dr["useremail"];
            Session["username"] = dr["username"];
            Session.Timeout = 10;
            if (dr["type"].ToString() == "1")
                Response.Redirect("first.aspx");
            else if (dr["type"].ToString()=="2")
                Response.Redirect("admin/adminpanel.aspx");
        }
        else
        {
            Label1.Text = "رمز یا نام کاربری اشتباه است!";
        }
        con.Close();
       

    }
}