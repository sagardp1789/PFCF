<%@ Page Title="" Language="C#" MasterPageFile="~/BP.Master" AutoEventWireup="true" CodeBehind="user_req.aspx.cs" Inherits="PFCF.user_req" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="header-page" class="header-margin-base">
			<div class="skyline">
				<div data-offset="50" class="p1 parallax"></div>
				<div data-offset="25" class="p2 parallax"></div>
				<div data-offset="15" class="p3 parallax"></div>
				<div data-offset="8"  class="p4 parallax"></div>
				<span class="cover"></span>
				<div class="container header-text">
					<div><h1 class="title">Users Requests</h1></div>
					<!--<div><h2 class="sub-title">Lorem ipsum dolor ats adipiscing elit justo</h2></div>-->
				</div>
			</div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a></li>
						<li><a href="Bprofile.aspx">Profile</a></li>
						<li class="active">Request</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->

    <section id="agency">
			<div class="section-detail">
				<h1>Service Requests from customers</h1>
			</div>
			<div class="container">
                <asp:Repeater ID="Repeater1" runat="server"  >
                    <ItemTemplate> 
				
                        
                        <div class="row agency-box">
					<div class="col-md-2">
                        </div>
                    <div class="col-sm-3 col-md-3 col-sm-push-6 col-md-push-7">
						<address>
							<asp:Label ID="Label4" Text="Address:" ForeColor="#1fb7a6" runat="server"></asp:Label>&nbsp;&nbsp;<asp:Label ID="lblad" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
						</address>
					</div>
					
					<div class="col-sm-6 col-md-7 center-box col-sm-pull-3 col-md-pull-3">
						<h2 class="title"><a><asp:Label ID="lbln" runat="server" Text='<%# Eval("Full_Name") %>'></asp:Label></a></h2>
						<h5 class="subtitle"><asp:Label ID="e" Text="Email:" ForeColor="#1fb7a6" runat="server"></asp:Label>&nbsp;&nbsp;<asp:Label ID="lble" runat="server" Text='<%# Eval("Email") %>'></asp:Label></h5>
                        <h5 class="subtitle"><asp:Label ID="Label1" Text="Phone:" ForeColor="#1fb7a6" runat="server"></asp:Label>&nbsp;&nbsp;<asp:Label ID="lblp" runat="server" Text='<%# Eval("Phone") %>'></asp:Label></h5>
                        <h5 class="subtitle"><asp:Label ID="Label2" Text="Req. date:" ForeColor="#1fb7a6" runat="server"></asp:Label>&nbsp;&nbsp;<asp:Label ID="lbld" runat="server" Text='<%# Eval("Date") %>'></asp:Label></h5>
						<span><asp:Label ID="Label3" Text="Requirements:" ForeColor="#1fb7a6" runat="server"></asp:Label>&nbsp;&nbsp;<asp:Label ID="lblr" runat="server" Text='<%# Eval("Requirement") %>'></asp:Label></span>
						<div class="button-container">
							<asp:LinkButton ID="delete" class="btn btn-default" runat="server" CommandArgument='<%# Eval("Id") %>' OnClick="delete_Click">Delete</asp:LinkButton>
						</div>
					</div>
                    
				</div>
				 </ItemTemplate>
             </asp:Repeater>
			</div>
                       

			<!-- pagination -->	
			<div class="container" id="pagination">
				<div class="row">
					<div class="col-md-12 text-center">
						<ul class="pagination">
							<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
							<li><a class="active" href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a class="no-active">...</a></li>
							<li><a href="#">9</a></li>
							<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
						</ul>
					</div>
				</div>
			</div><!-- ./container -->

		</section>

</asp:Content>
