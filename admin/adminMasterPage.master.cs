using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_adminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void exitbtn_Click(object sender, EventArgs e)
    {
        Session.Remove("username");
        Session["login"] = 0;
        Response.Redirect("../first.aspx");
    }
}
