using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class admin_upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["login"].ToString()!="1")
            
                Response.Redirect("../first.aspx");
            
        }
        catch
        {

        }
    }

    protected void uploadbtn_Click(object sender, EventArgs e)
    {
        if ((imgUpload.HasFile) && (FileUpload.HasFile))
        {
            if ((checktype1(imgUpload.FileName)) && (checktype2(FileUpload.FileName)))
            {
                postDataSetTableAdapters.post_tblTableAdapter pta = new postDataSetTableAdapters.post_tblTableAdapter();
                DateTime dt = DateTime.Now;
                string postimg = imgUpload.FileName;
                string filepost = FileUpload.FileName;
                pta.InsertPost(titlepost.Text, decpost.Text, 0, filepost, dt, postimg, int.Parse(catid_txt.SelectedValue), true, Session["useremail"].ToString());

                imgUpload.SaveAs(MapPath("~/img/" + imgUpload.FileName));
                FileUpload.SaveAs(MapPath("~/files/" + FileUpload.FileName));
                titlepost.Text = "";
                decpost.Text = "";
                Response.Write("<script>alert('فایل با موفقیت اپلود شد ')</script>");
            }          
        }
    }
    public bool checktype1(string a)
    {
        string ext = Path.GetExtension(a);
        switch (ext.ToLower())
        {
            case ".jpg": return true;
            case ".png": return true;
            case ".jpeg": return true;
            default: return false;
        }
    }
    public bool checktype2(string b)
    {
        string ext = Path.GetExtension(b);
        switch (ext.ToLower())
        {
            case ".mov": return true;
            case ".mp4": return true;
            case ".pdf": return true;
            case ".rar": return true;
            case ".wmv": return true;
            default: return false;
        }


    }
}