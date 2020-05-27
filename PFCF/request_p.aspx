<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="request_p.aspx.cs" Inherits="PFCF.request_p" %>
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
					<div><h1 class="title">Request Product</h1></div>
				</div>
			</div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="index.aspx"><i class="fa fa-home"></i></a></li>
						<li class="active">Request</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->
<section id="user-profile">
	<div class="container">
				<div class="row">
					<div class="col-sm-3 col-md-2" id="edit-image">
					</div>
					<div class="col-sm-9 col-md-6">
						<div class="section-title line-style no-margin">
							<h3 class="title">General Info</h3>
						</div>
						<ul class="profile create">
							<li>
								<span>Id</span>
								<asp:TextBox ID="txtBId" Enabled="false"  class="form-control"  runat="server"></asp:TextBox>
							</li>
                            <li>
								<span>Agency_Name</span>
								<asp:TextBox ID="txtag" Enabled="false" TextMode="MultiLine"  class="form-control"  runat="server"></asp:TextBox>
							</li>
                            <li>
								<span><asp:RequiredFieldValidator ID="vfn" runat="server" ForeColor="Red" ControlToValidate="fname" ErrorMessage="*"></asp:RequiredFieldValidator>Name</span>
								<asp:TextBox ID="fname"  class="form-control" placeholder="Enter Your Full Name" runat="server"></asp:TextBox>
							</li>
							<li>
								<span><asp:RequiredFieldValidator ID="vem" runat="server" ForeColor="Red" ControlToValidate="email" ErrorMessage="*"></asp:RequiredFieldValidator>Email</span> 
								<asp:TextBox ID="email"  class="form-control" placeholder="Enter Your Email" runat="server"></asp:TextBox>
							</li>
							
							<li>
								<span><asp:RequiredFieldValidator ID="vph" runat="server" ForeColor="Red" ControlToValidate="phone" ErrorMessage="*"></asp:RequiredFieldValidator>Phone</span>
								<asp:TextBox ID="phone"  class="form-control" placeholder="Enter Your Phone No." runat="server"></asp:TextBox>
							</li>
							<li>
								<span><asp:RequiredFieldValidator ID="vad" runat="server" ForeColor="Red" ControlToValidate="address" ErrorMessage="*"></asp:RequiredFieldValidator>Address</span>
								<asp:TextBox ID="address" TextMode="MultiLine"  placeholder="Your Address.." class="form-control" runat="server"></asp:TextBox>
							</li>
							<li>
								<span>Requirements</span>
								<asp:TextBox ID="requ" TextMode="MultiLine" placeholder="Your Requirements" class="form-control" runat="server"></asp:TextBox>
							</li>
						</ul>
                        <ul  class="profile create">
                                 <li><asp:RegularExpressionValidator ID="phonev2" runat="server" ForeColor="Red" ControlToValidate="phone" ValidationExpression="^([+][9][1]|[9][1]|[0]){0,1}([7-9]{1})([0-9]{9})$" ErrorMessage="Please enter valid phone no"></asp:RegularExpressionValidator></li>
                                <li><asp:RegularExpressionValidator ID="emailv1" runat="server" ForeColor="Red" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Please enter valid email address "></asp:RegularExpressionValidator></li>
					     </ul>
					</div>
					<div class="col-sm-12 col-md-8 text-right">
                        <asp:Button ID="send" class="btn btn-default signin-button" runat="server" Text="Send" OnClick="send_Click" />
					
                    </div>
                     
				</div>
			</div>
		</section>
</asp:Content>
