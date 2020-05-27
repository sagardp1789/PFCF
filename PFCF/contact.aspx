<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="PFCF.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="header-page" class="header-margin-base">
			<div id="map-canvas" class="header-map"></div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="index.aspx"><i class="fa fa-home"></i></a></li>
						<!--<li><a href="#">Pages</a></li>-->
						<li class="active">Contact</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->
    <section id="contact">
			<div class="container">
				
				<div class="row">
					<div class="col-sm-8 col-sm-push-4 col-md-9 col-md-push-3 form-container">
                        <font size="+2"><asp:Label ID="Label1" runat="server"></asp:Label></font>
						<h3 class="title">Contact with the ProHome Team</h3>
						If you have any problem related with ProHome then Contact With Us.
						<div class="form-large">
							<div class="row">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<label for="name">
                                        <asp:RequiredFieldValidator ID="namev" runat="server" ForeColor="Red" ControlToValidate="name" ErrorMessage="*"></asp:RequiredFieldValidator>Name</label>
                                    <asp:TextBox ID="name" placeholder="Full Name" class="margin-bottom form-control" runat="server"></asp:TextBox>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<label for="email">
                                        <asp:RequiredFieldValidator ID="emailv" runat="server" ForeColor="Red" ControlToValidate="email" ErrorMessage="*"></asp:RequiredFieldValidator>Email</label>
                                    <asp:TextBox class="margin-bottom form-control" ID="email" placeholder="Email" runat="server"></asp:TextBox>

								</div>
								<div class="col-md-12">
									<label for="subject">
                                        <asp:RequiredFieldValidator ID="sub" runat="server" ForeColor="Red" ControlToValidate="subject" ErrorMessage="*"></asp:RequiredFieldValidator>Subject</label>
                                    <asp:TextBox ID="subject" class="margin-bottom form-control" placeholder="Subject" runat="server"></asp:TextBox>
								</div>
								<div class="col-md-12">
									<label for="text-message">
                                        <asp:RequiredFieldValidator ID="msgv" runat="server" ForeColor="Red" ControlToValidate="message" ErrorMessage="*"></asp:RequiredFieldValidator>Message</label>
                                    <asp:TextBox class="margin-bottom form-control"  TextMode="MultiLine" placeholder="Message" ID="message" runat="server"></asp:TextBox>
									
								</div>
								
							</div>
                            <asp:Button ID="submit" runat="server" Text="Send Mail" class="btn btn-default" OnClick="submit_Click"/>
							<ul  class="profile create">
                        <li><asp:RegularExpressionValidator ID="emailv1" runat="server" ForeColor="Red" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Please enter valid email address "></asp:RegularExpressionValidator></li>
					     </ul>
                   
						</div>
					</div><!-- /.form-container -->

					<div class="col-sm-4 col-sm-pull-8 col-md-3 col-md-pull-9 hidden-xs">
						<div class="info-container">
							<h1>Contact</h1>
							<ul class="grey-box">
								<li>+123-456-789 <i class="icon fa fa-phone"></i></li>
								<li><a href="#">Sveri@gmail.com</a><i class="icon fa fa-envelope-o"></i></li>
							</ul>
							<h2>E-mail</h2>
							<ul class="grey-box">
								<li><a href="mailto:info@prohome.com">Info</a><i class="icon fa fa-envelope-o"></i></li>
								<li><a href="mailto:support@prohome.com">Support</a><i class="icon fa fa-envelope-o"></i></li>
								<li><a href="mailto:development@prohome.com">Dev</a><i class="icon fa fa-envelope-o"></i></li>
							</ul>
							<h2>Phone &amp; Fax</h2>
							<ul class="grey-box">
								<li>Info: +0123-456-789 <i class="icon fa fa-mobile"></i></li>
								<li>Support: +0123-987-654 <i class="icon fa fa-phone"></i></li>
								<li>Dev: +0123-123-456 <i class="icon fa fa-phone"></i></li>
							</ul>

							<span class="clear-fix"></span>

						</div><!-- /.info-container -->
					</div><!-- ./col-sm-4 -->

				</div>
			</div>
		</section>

</asp:Content>
