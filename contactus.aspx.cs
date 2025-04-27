using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contactus : System.Web.UI.Page
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
        try
        {
            if (Session["login"].ToString() == "1")
            {
                conemail.Text = Session["useremail"].ToString();
            }
        }
        catch
        {

        }
        }
    protected void Button1_Click(object sender, EventArgs e)
    {
        contactusDataSetTableAdapters.contactus_tblTableAdapter ob = new
            contactusDataSetTableAdapters.contactus_tblTableAdapter();
        try { 
        if (Session["login"].ToString()== "1")
        {
            conemail.Text = Session["useremail"].ToString();
            ob.Insertcontact(Session["useremail"].ToString(),
           contitle.Text,
           DateTime.Now,
           cmnt.Text
           );
            contitle.Text = "";
            cmnt.Text = "";
            conemail.Text = "";
            Label1.Text = "پیام شما با موفقیت ارسال شد.";
        }
        }
        catch
        { 
        ob.Insertcontact(conemail.Text,
            contitle.Text,
            DateTime.Now,
            cmnt.Text
            );
        contitle.Text = "";
        cmnt.Text = "";
        conemail.Text = "";
        Label1.Text = "پیام شما با موفقیت ارسال شد.";
        }

    }
}