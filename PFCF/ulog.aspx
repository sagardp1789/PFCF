<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="ulog.aspx.cs" Inherits="PFCF.ulog" %>
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
					<div><h1 class="title">User Login</h1></div>
					<div><h2 class="sub-title">Create user account </h2></div>
				</div>
			</div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="index.aspx"><i class="fa fa-home"></i></a></li>
                        <li><a href="#">Login</a></li>
						<li class="active">UserLogin</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->
<section id="login-page">

			<div class="container">
				<div class="row">
					<div class="col-sm-7 col-sm-push-5 col-md-8 col-md-push-4">
						<div class="text-desclaimer">
							<h1>Welcome</h1>
							<h3>CONSTRUCTHome Account</h3>
							
							<div class="bs-callout callout-info">
								Login to your user account.
							</div>
							</div>
					</div>
					<div class="col-sm-5 col-sm-pull-7 col-md-4 col-md-pull-8">
						<div class="box">
							<h2 class="title">ProHome Login</h2>
							<div class="field">
								
                                <asp:TextBox ID="email" placeholder="Username or email" class="form-control" runat="server"></asp:TextBox>
								<i class="fa fa-user user"></i>
							</div>
							<div class="field">
                                <asp:TextBox ID="password" placeholder="Password" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
								<i class="fa fa-ellipsis-h"></i>
							</div>
							<div class="field footer-form text-right">
								
								<asp:Button ID="btnlog" class="btn btn-default button-form" text="Login" runat="server" OnClick="btnlog_Click"/>
                                <asp:Button ID="btnreg" class="btn btn-default button-form" text="Create" runat="server" PostBackUrl="~/uregister.aspx" />
                            </div>
						</div>
					</div>
				</div>
			</div>

		</section>

</asp:Content>
