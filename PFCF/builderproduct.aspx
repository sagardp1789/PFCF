<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="builderproduct.aspx.cs" Inherits="PFCF.builderproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="recent-list">
			<div class="section-detail">
				<h1>
				  <span>ProHome</span>
				  <span id="spinner-show">
					  <em class="current">Builder</em>
					  <span class="next"><span></span></span>
				  </span>
				  <span>Services</span>
				</h1>
				<ul id="spinner">
					 <li>Recent</li>
					 <li>Available</li>
					 <li>Best</li>
					
				</ul>
				<h2>Following are the some recently added services or businesses.</h2>		
			</div>
			<div class="container">
               
				
                <div class="list-box-title">
					<span><i class="icon fa fa-plus-square"></i><b>Builder's</b></span>
				</div>
				<div class="row">
				<asp:Repeater ID="Repeater1" runat="server" >
                    <ItemTemplate> 
                    <div class="col-md-4">
						<div class="box-ads box-home">
							<a class="hover-effect image image-fill" href="property-detail.html">
								<span class="cover"></span>
								<asp:Image ID="Image1"  runat="server" ImageUrl='<%# Eval("image") %>' />
								<h3 class="title"><asp:Label ID="lblbusiness" runat="server" Text='<%# Eval("Business") %>'></asp:Label></h3>
							</a><!-- /.hover-effect -->
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="price"><i class="fa fa-phone"></i><asp:Label ID="lblphone" runat="server" Text='<%# Eval("Phone") %>'></asp:Label></span>
							<span class="address"><b><asp:Label ID="lblagname" runat="server" Text='<%# Eval("Agency_Name") %>'></asp:Label></b></span>
							<span class="description"><asp:Label ID="lbldes" runat="server" Text='<%# Eval("Description") %>'></asp:Label></span>
                            <div class="address"><b>Address :</b><asp:Label ID="lbladdress" runat="server" Text='<%# Eval("Address_Line1") %>'></asp:Label></div>
							<div class="address"><b>Builder Services :</b><asp:Label ID="lblservices" runat="server" Text='<%# Eval("Service") %>'></asp:Label></div>
                            <div class="address"><table>
                                <tr>
                                    <td><asp:HyperLink ID="fb" runat="server" NavigateUrl='<%# Eval("Facebook") %>'><i class="fa fa-facebook fa-lg"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:HyperLink></td>
                                    <td><asp:HyperLink ID="tw" runat="server" NavigateUrl='<%# Eval("Twitter") %>'><i class="fa fa-twitter fa-lg"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:HyperLink></td>
                                    <td><asp:HyperLink ID="go" runat="server" NavigateUrl='<%# Eval("Google") %>'><i class="fa fa-google-plus fa-lg"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:HyperLink></td>
                                 </tr>
                            </table></div>
                            <div class="footer">
                               <asp:LinkButton ID="link" class="btn btn-reverse" runat="server" CommandArgument='<%# Eval("Id") %>' OnClick="linkid_Click">Request</asp:LinkButton>
                             </div>
						</div><!-- /.box-home .box-ads -->
					</div><!-- ./col-md-4 -->
                      
                 </ItemTemplate> 
                 </asp:Repeater> 
                </div>
            </div>

  
		</section>

</asp:Content>
