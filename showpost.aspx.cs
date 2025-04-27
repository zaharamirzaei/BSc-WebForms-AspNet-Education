using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class showpost : System.Web.UI.Page
{
    private readonly bool file;

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

     
        postDataSetTableAdapters.post_tblTableAdapter pta = new postDataSetTableAdapters.post_tblTableAdapter();
        
        string postid = Request.QueryString["postid"];
        string top = pta.titlepost(int.Parse(postid));
        //string postname = Request.QueryString["postname"];
        Page.Title = top;

        try
        {
            if (Session["login"].ToString() == "1")
            {
                DataList1.Visible = false;
                username_com.Text = Session["username"].ToString();
                email_com.Text = Session["useremail"].ToString();
            }
          else
            {
                DataList3.Visible = false;
            }
            


        }
        catch
        {
            DataList3.Visible = false;
        }

        //if (Session["login"].ToString() == "1")
        //{
        //    username_com.Text = Session["username"].ToString();
        //    email_com.Text = Session["useremail"].ToString();
        //}
        //else { }
    }

    protected void sendcom_Click(object sender, EventArgs e)

    {
        try
        { 
            if (Session["login"].ToString() == "1")
            {
                commentDataSetTableAdapters.commenttblTableAdapter cta = new commentDataSetTableAdapters.commenttblTableAdapter();
                string postid = Request.QueryString["postid"];
                cta.Insertcomment(DateTime.Now, int.Parse(postid), comment.Text.Trim(), Session["useremail"].ToString(), false, Session["username"].ToString());

                //DataList2.DataBind();
                comment.Text = "";
                email_com.Text = "";
                username_com.Text = "";
                Label1.Text = "کامنت با موفقیت ارسال شد!";
            }
        }
        catch
        { 
            Label1.Text = "!برای نظر دادن ابتدا باید وارد وارد پنل کاربری خود شوید";
        }
    }

    protected void downloadbtn_Click(object sender, EventArgs e)
    {
      
        //try
        //{
        //    if (Session["login"].ToString() == "1")
        //    {
                //downloadTableAdapters.DldtblTableAdapter dta = new downloadTableAdapters.DldtblTableAdapter();
                //string postid = Request.QueryString["postid"];
                //postDataSetTableAdapters.post_tblTableAdapter pta = new postDataSetTableAdapters.post_tblTableAdapter();
                //string top = pta.titlepost(int.Parse(postid));
                //dta.Insertdld_tbl(int.Parse(postid), Session["useremail"].ToString(), DateTime.Now, top);
        //    }
        //}
        //catch
        //{
        //    Label2.Text = " برای دانلود ابتدا باید وارد پنل کاربری شوید";
        //}

    }

   
}



//    protected void LinkButton1_Click(object sender, EventArgs e)
//    {
//        downloadTableAdapters.DldtblTableAdapter dta = new downloadTableAdapters.DldtblTableAdapter();
//        string postid = Request.QueryString["postid"];
//        dta.Insertdld_tbl(int.Parse(postid), Session["useremail"].ToString(), DateTime.Now, "ccc");
//    }
//}