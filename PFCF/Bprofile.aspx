<%@ Page Title="" Language="C#" MasterPageFile="~/BP.Master" AutoEventWireup="true" CodeBehind="Bprofile.aspx.cs" Inherits="PFCF.Bprofile" %>
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
					<div><h1 class="title">Hello</h1></div>
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
							<div class="image-content">
										<div class="image image-fill" style="position: relative; overflow: hidden;">
											<asp:Image ID="uimg" runat="server" />
										</div>						
							</div>
							
								<br>
                            <center><h3 class="title"><asp:Label ID="iname" runat="server"></asp:Label></h3></center>
													
							
						</div>
						<br />
						<ul class="block-menu">
							<li><a class="faq-button active" href="profile.html"><i class="icon fa fa-user-secret"></i> Profile</a></li>

							<li><asp:LinkButton ID="ser" data-toggle="modal" data-target="#modal-editservice" data-section="modal-contact" runat="server"><i class="icon fa fa-plus"></i>Edit Service</asp:LinkButton></li>
						</ul>
					</div>
					<div class="col-sm-8 col-md-9">

						<div class="row">
							<div class="col-md-">
								<div class="section-title line-style no-margin">
									<h3 class="title">General Info</h3>
									<i class="icon fa fa-cog"></i>
								</div>
								<ul class="profile">
								    <li>
										<span>Seller ID</span><p> <asp:Label ID="sid" runat="server"></asp:Label></p>
										
									</li>

									<li>
										<span>Name</span><p> <asp:Label ID="name" runat="server"></asp:Label></p>
										
									</li>
                                    								
									<li>
										<span>Agency Name</span><p><asp:Label ID="agname" runat="server"></asp:Label></p>
									
									</li>

                                    <li class="fullwidth">
										<span>Address 1</span> 
										<p> <asp:Label ID="ad1" runat="server"></asp:Label> <br />
                             
										</p>
										
									</li>
                                    <li class="fullwidth">
										<span>Address 2</span> 
										<p> <asp:Label ID="ad2" runat="server"></asp:Label> <br />
                                           
										</p>
										
									</li>
									
									<li class="fullwidth">
										<span>Services</span> 
										<p><asp:Label ID="service" runat="server"></asp:Label> </p>
										
									</li>
								</ul>
								<div class="section-title line-style">
									<h3 class="title">Basic Contact</h3>
									
								</div>
								<ul class="profile">
									<li>
										<span>Email</span><p><asp:Label ID="email" runat="server"></asp:Label></p> 
										
										
									</li>
									
									<li>
										<span>Phone</span><p><asp:Label ID="phone" runat="server"></asp:Label> </p>
										
									
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
           
             <div class="modal fade" id="modal-editservice" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>

				<div class="form-container full-fixed">
					
						<div id="form-modal-editservice" class="box active modal-contact">
							<h2 class="title">Edit your Services</h2>
							
							<ul class="object-contact">
								<li><a href="#" class="active"><i class="fa fa-comment-o"></i>Edit</a></li>
							</ul>
							<div class="field">
                                <asp:TextBox ID="txtservices" class="form-control" placeholder="" TextMode="MultiLine" runat="server"></asp:TextBox>
							</div>
							<div class="field footer-form text-right">
								<asp:Button ID="update" runat="server" class="btn btn-default button-form" Text="Update" OnClick="update_Click" />
							</div>
                             <ul  class="profile create">
                                <li> <asp:RequiredFieldValidator ID="msgv" runat="server" ForeColor="Red" ControlToValidate="txtservices" ErrorMessage="Enter Your services"></asp:RequiredFieldValidator></li>
                              </ul>
						</div>
					
				</div>


			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		
        </section>
</asp:Content>
