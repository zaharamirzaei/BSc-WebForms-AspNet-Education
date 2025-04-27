<%@ Page Title="" Language="C#" MasterPageFile="~/userpanel/usermaster.master" AutoEventWireup="true" CodeFile="mycomment.aspx.cs" Inherits="mycomment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="card">  
         <div class="card-header"> :لیست نظرات من</div>
          <div class="card-body"> 
              <%

                  System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
                  con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["SiteDatabaseConnectionString"].ConnectionString;
                  con.Open();
                  System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                  cmd.CommandType = System.Data.CommandType.Text;
                  cmd.CommandText = "select * from commenttbl where comemail= @useremail";
                  cmd.Parameters.AddWithValue("@useremail", Session["useremail"]);
                  cmd.Connection = con;
                  System.Data.SqlClient.SqlDataReader dr;
                  dr = cmd.ExecuteReader();
                  if (dr.HasRows)
                  {
                      while (dr.Read())
                      {

                          Response.Write("تاریخ: " + dr["comdate"] + "<br/> متن: " + dr["comtext"] + "<br/>وضعیت تایید: " + dr["approved"] + "<hr>");

                      }
                  }
                  else
                  {
                      Label1.Text = "هنوز نظری ثبت نکرده اید";
                  }


                   %>
              <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

              </div>
         </div>

</asp:Content>

