using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class first : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        try
        {
            if (Session["login"].ToString() == "1")
                this.MasterPageFile = "~/userpanel/usermaster.master";
        }
        catch
        {
            this.MasterPageFile = "~/MasterPage.master";
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}