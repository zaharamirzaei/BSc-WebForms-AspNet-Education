using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }

    protected void register_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["SiteDatabaseConnectionString"].ConnectionString;

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "insert into usertbl(username,useremail,userpass,type) values(N'" + name.Text + "','" + email.Text + "','" + pass.Text + "',1) ";

        con.Open();
        if (cmd.ExecuteNonQuery() > 0) {
            msg.InnerText = "ثبت نام با موفقیت انجام شد";         
            login.InnerText = "صفحه ی ورود";
            name.Text = " ";
            email.Text = " ";
            pass.Text = " ";
            pass2.Text = "";
        }
        else
            msg.InnerText = "خطا در ثبت اطلاعات";

        con.Close();


    }
}