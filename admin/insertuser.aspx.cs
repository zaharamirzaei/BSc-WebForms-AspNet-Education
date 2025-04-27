using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_insertuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void insertbtn_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["SiteDatabaseConnectionString"].ConnectionString;

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "insert into usertbl(username,useremail,userpass,type) values(N'" + name.Text + "','" + email.Text + "',N'" + pass.Text + "','"+DropDownList1.SelectedValue+ "') ";       
        con.Open();

        if (cmd.ExecuteNonQuery() > 0)
        {
            msg.InnerText = "عضو جدید با موفقیت افزوده شد";
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