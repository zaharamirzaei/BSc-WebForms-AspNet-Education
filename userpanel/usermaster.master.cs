using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class userpanel_usermaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try {
            if (Session["login"].ToString() == "1") { 
            welcome.Text = Session["username"].ToString();
            }

        }
        catch
        {
            Response.Redirect("first.aspx");
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../first.aspx");
    }



    protected void exitbtn_Click(object sender, EventArgs e)
    {
        Session.Remove("username");
        Session["login"] = 0;
        Response.Redirect("first.aspx");
    }
}
