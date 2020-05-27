<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="uprofile.aspx.cs" Inherits="PFCF.uprofile" %>
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
					<div><h1 class="title">Hello </h1></div>
					<div><h2 class="sub-title">Welcome To Your ProHome Account</h2></div>
				</div>
			</div>
			
			<span class="cover"></span>
		</section><!-- /#header -->

		<section id="user-profile">
			<div class="container">
				<div class="row">
                    
					<div class="col-sm-4 col-md-3">
						<!-- . Agent Box -->
						<div class="agent-box-card grey">
							
								
						</div>
						<br />
						<ul class="block-menu">
							<li><a class="faq-button active" href="uprofile.html"><i class="icon fa fa-user-secret"></i> Profile</a></li>

							<li><asp:LinkButton ID="logout" class="faq-button" runat="server" OnClick="logout_Click"><i class="icon fa fa-plus"></i>logout</asp:LinkButton></li>
						</ul>
					</div>
					<div class="col-sm-8 col-md-9">

						<div class="row">
							<div class="col-md-">
								<div class="section-title line-style">
									<h3 class="title">Basic Contact</h3>
									
								</div>
								<ul class="profile">
									<li>
										<span>User ID</span><p><asp:Label ID="uid" runat="server"></asp:Label></p> 
									</li>

                                    <li>
										<span>Full Name</span><p><asp:Label ID="name" runat="server"></asp:Label></p> 
									</li>
                                    
                                    <li>
										<span>Email</span><p><asp:Label ID="email" runat="server"></asp:Label></p> 
									</li>

                                    <li>
										<span>Phone</span><p><asp:Label ID="phone" runat="server"></asp:Label></p> 
									</li>
									
									<li>
										<span>Address</span><p><asp:Label ID="add" runat="server"></asp:Label> </p>
									</li>

                                    <li>
										<span>Pin</span><p><asp:Label ID="pin" runat="server"></asp:Label></p> 
									</li>
								</ul>
								<div class="section-title line-style">
									<h3 class="title">Socian Network</h3>
                                    <div id="login-pan" >
							        <a href="#" data-toggle="modal" data-target=".login-modal" data-section="login">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <i class="fa fa-plus-square-o fa-2x"></i></a>
						            </div>
								</div>
                                
								<ul class="profile">
                                    
									<li>
										<span>Facebook</span> 
										<p> <asp:Label ID="lblfacebook" runat="server"></asp:Label> </p>
										
									</li>
									<li>
										<span>Twitter</span> 
										<p><asp:Label ID="lbltwitter" runat="server"></asp:Label> </p> 
										
									</li>
									<li>
										<span>Google+</span> 
										<p><asp:Label ID="lblgoogle" runat="server"></asp:Label> </p>
										
									</li>
								</ul>
								<!-- <div class="bs-callout callout-danger">
									<h4 class="title">Nullam sodales lorem sit amet</h4>
									<p class="text">Integer euismod cursus dolor. Curamet pellentesque sed, sodales at augue.</p>
								</div> -->
								<div class="section-title line-style">
									<h3 class="title">Change Your Password</h3>
								</div>
								<form method="post" action="#" class="grey-box">
									
                                    <asp:TextBox ID="cpass" placeholder="New password" TextMode="Password" class="form-control" runat="server"></asp:TextBox><br>
									<asp:TextBox ID="passr" placeholder="Re-enter password" TextMode="Password" class="form-control" runat="server"></asp:TextBox><br>
                                    <asp:CompareValidator ID="passv" ForeColor="Red" ControlToValidate="passr" ControlToCompare="cpass" runat="server" ErrorMessage="password doesnot match"></asp:CompareValidator>
                                   <asp:Button ID="save" runat="server" class="btn btn-default" Text="Save Changes" OnClick="save_Click" />						
								</form>
							</div>
                            
						</div>

					</div>
                   
				</div>
			</div>
            <div class="modal fade login-modal" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>
				<div class="login-button-container">
					<a href="#" data-section="login"><i class="fa fa-user"></i></a>
				</div><!-- ./login-button-container -->
				<div class="form-container">
					
						<div id="login" class="box">
							<h2 class="title">Update Your Social Details</h2>
							
							<div class="field">
								<asp:TextBox ID="facebook" class="form-control" placeholder="Facebook Profile URL" runat="server"></asp:TextBox>
								<i class="fa fa-facebook-official"></i>
							</div>
							<div class="field">
								<asp:TextBox ID="twitter" class="form-control" placeholder="Twitter Profile URL" runat="server"></asp:TextBox>
								<i class="fa fa-twitter-square"></i>
							</div>
                            <div class="field">
								<asp:TextBox ID="google" class="form-control" placeholder="Google+ Profile URL" runat="server"></asp:TextBox>
								<i class="fa fa-google-plus-square"></i>
							</div>
							<div class="field footer-form text-right">
								<asp:Button ID="reset" class="btn btn-reverse button-form" runat="server" Text="Reset" OnClick="reset_Click" />
								
								
							</div>
						</div> <!-- ./login -->
						
					
				</div><!-- ./login-button-container -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		
        </section>
</asp:Content>
