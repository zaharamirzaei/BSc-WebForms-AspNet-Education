<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showpost.aspx.cs" Inherits="showpost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title><%# Eval("postname") %></title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="postId" DataSourceID="ObjectDataSource1" ViewStateMode="Enabled" >
        <ItemTemplate>
             <div class="card mb-4">                   
                        <img src="<%# Eval("postimg","img/{0}") %>" class="card-img-top"/>                   
                        <div class="card-body">
                            <div class="card-title">
                                <h2 ><%# Eval("postname") %></h2>                           
                            </div>                           
                            <p class="card-text"><%# Eval("postdesc") %></p>
                          <br/>                       
                        </div>           
                  <a class="btn btn-info" href="../login.aspx" >برای دانلود وارد پنل کاربری شوید</a>
                        <div class="card-footer text-muted" >
                            تاریخ انتشار:  <%# Eval("postdate") %>
                            <br/>
                            تعداد دانلود :  <%# Eval("postdownloaded") %>
                            <br/>
                        </div>              
              </div>                  
              <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList3" runat="server" DataKeyField="postId" DataSourceID="ObjectDataSource3">
        <ItemTemplate>
            <div class="card mb-4">                   
                 <img src="<%# Eval("postimg","img/{0}") %>" class="card-img-top"/>                   
                 <div class="card-body">
                      <div class="card-title">
                           <h2 ><%# Eval("postname") %></h2>                           
                      </div>  
                      <p class="card-text"><%# Eval("postdesc") %></p>
                      <br/>                       
                 </div>           
                 <asp:LinkButton    ID="downloadbtn" runat="server" OnClick="downloadbtn_Click" ><a class="btn btn-info" href="download.ashx?file=files/<%# Eval("file") %>" >دانلود</a></asp:LinkButton>
                 <div class="card-footer text-muted" >
                     تاریخ انتشار:  <%# Eval("postdate") %>
                      <br/>
                     تعداد دانلود :  <%# Eval("postdownloaded") %>
                      <br/> 
                  </div>
              </div>                  
        </ItemTemplate>
    </asp:DataList>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDatapostBypostId" TypeName="postDataSetTableAdapters.post_tblTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter Name="postId" QueryStringField="postid" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDatapostBypostId" TypeName="postDataSetTableAdapters.post_tblTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="postId" QueryStringField="postid" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <div class="card mb-6">
        <h5 class="card-header" style="background-color:darkgray;">نظرات شما</h5>         
        <br/>
    <%
        System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["SiteDatabaseConnectionString"].ConnectionString;
        con.Open();
         string pid = Request.QueryString["postid"];
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "select * from commenttbl where postid= @postid AND approved=1";
        cmd.Parameters.AddWithValue("@postid", pid);
       
        cmd.Connection = con;
        System.Data.SqlClient.SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                Response.Write("<h6 class=\"text-muted\">تاریخ:<asp:Label ID=\"comdateLabel\" runat=\"server\" Text=\"+dr[\"comdate\"]+\") /></h6><br /><asp:Label ID=\"comnameLabel\" runat=\"server\" Text=\"+dr[\"comname\"]+\" Font-Bold=\"True\" Font-Size=\"Larger\" BackColor=\"White\" /> :<br /><asp:Label ID=\"comtextLabel\" runat=\"server\" Text=\"+dr[\"comtext\"]+\" /><br /> <hr>");
                Response.Write("تاریخ:" + dr["comdate"] + "<br/> متن:" + dr["comtext"] + "<br/>وضعیت تایید:" + dr["approved"]+"");
            }
        }
        else
        {
            Label2.Text = "نظر برای نمایش وجود ندارد";
        }
                   %>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label> <br />
	 </div>
    <br />
    		<div class="card mb-4">
						<h5 class="card-header">نظر دهید</h5>
						<div class="card-body">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="user">نام و نام خانوادگی:</label>
                                        <asp:TextBox class="form-control text-muted" ID="username_com" runat="server"></asp:TextBox>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="user">پست الکترونیک:</label>
										<asp:TextBox class="form-control  text-muted" ID="email_com" runat="server"></asp:TextBox>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="cmnt">نظر شما:</label>
                                <asp:TextBox   class="form-control" Rows="5" ID="comment" runat="server" TextMode="MultiLine"></asp:TextBox>
                                <br/>
                                <asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label>
								<br />
							</div>
                            <asp:Button class="btn btn-info" ID="sendcom" runat="server" Text="ارسال نظر" Font-Bold="True" OnClick="sendcom_Click" />				
						</div>
					</div>
</asp:Content>

