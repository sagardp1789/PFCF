<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="uregister.aspx.cs" Inherits="PFCF.uregister" %>
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
					<div><h1 class="title">Create Account</h1></div>
					<div><h2 class="sub-title">Consectetur ats adipiscing elit justocing</h2></div>
				</div>
			</div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a></li>
					    <li><a href="#"></a>Register</li>
						<li class="active">Create Account</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->

		<section id="user-profile">
			<div class="container">
				<div class="row">
					<div class="col-sm-3 col-md-2" id="edit-image">
						<!-- avatar -->
						
					</div>
					<div class="col-sm-9 col-md-6">
						<div class="section-title line-style no-margin">
							<h3 class="title">Fill User Details</h3>
						</div>
						<ul class="profile create">
							
							<li>
								<span><asp:RequiredFieldValidator ID="Fnamev" ControlToValidate="Fname" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>Full Name</span>
							
							<asp:TextBox ID="Fname" class="form-control" placeholder="Enter your Name" runat="server"></asp:TextBox>
                            
                            </li>
							<li>
								<span><asp:RequiredFieldValidator ID="emali1" runat="server" ForeColor="Red" ControlToValidate="email" ErrorMessage="*"></asp:RequiredFieldValidator>Email</span> 
								
							<asp:TextBox ID="email" class="form-control" placeholder="Enter your email" runat="server"></asp:TextBox>
                            
                            
                            </li>
							<li>
								<span><asp:RequiredFieldValidator ID="phonev3" runat="server" ForeColor="Red" ControlToValidate="phone" ErrorMessage="*"></asp:RequiredFieldValidator>Phone</span>
						        
                                         <asp:TextBox ID="phone" class="form-control" placeholder="Enter Phone No." runat="server"></asp:TextBox>
                                         
                                   
                            
                            </li>
							
							<li>
								<span><asp:RequiredFieldValidator ID="passv" runat="server" ForeColor="Red" ControlToValidate="password" ErrorMessage="*"></asp:RequiredFieldValidator>Password</span>
							
                                <asp:TextBox ID="password" runat="server" class="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                            
                            </li>
							<li>
								<span>Confirm Password</span>
						        <asp:TextBox ID="cpassword" runat="server" class="form-control" placeholder=" Confirm-Password " TextMode="Password"></asp:TextBox></td>
                                
                                     
                            </li>
                            <li>
								<span><asp:RequiredFieldValidator ID="pinv3" runat="server" ForeColor="Red" ControlToValidate="pin" ErrorMessage="*"></asp:RequiredFieldValidator>Pin Code</span>
                                
                                <asp:TextBox ID="pin" class="form-control" placeholder=" Enter Pin-Code " runat="server"></asp:TextBox>
                                
                                    
                                    </li>
							<li>
								<span><asp:RequiredFieldValidator ID="addv" runat="server" ForeColor="Red" ControlToValidate="address" ErrorMessage="*"></asp:RequiredFieldValidator>Address</span>
			
							
                             <asp:TextBox ID="address" class="form-control" placeholder="A/P..,Tehsil..,District.." runat="server" TextMode="MultiLine"></asp:TextBox>
                            
                            
                            </li>
						</ul>
                        <ul class="profile create">
                        <li><asp:RegularExpressionValidator ID="phonev" ForeColor="Red" runat="server" ControlToValidate="phone" ValidationExpression="^([+][9][1]|[9][1]|[0]){0,1}([7-9]{1})([0-9]{9})$" ErrorMessage="*invalid Phone No"></asp:RegularExpressionValidator></li>
				        <li><asp:CompareValidator ID="cpassv" ForeColor="Red" runat="server" ControlToValidate="cpassword" ControlToCompare="password" ErrorMessage="*password does not match"></asp:CompareValidator></li>
                        <li><asp:RegularExpressionValidator ID="pinv1" ForeColor="Red" ValidationExpression="^([1-9])([0-9]){5}$" ControlToValidate="pin" runat="server" ErrorMessage="*Invalid pin code"></asp:RegularExpressionValidator></li>
                    </ul>
					</div>
					
					<div class="col-sm-12 col-md-8 text-right">
						
                        <asp:Button ID="signup" class="btn btn-default signin-button" runat="server" Text="Sign up" OnClick="signup_Click1" />
					</div>
                   
                    
                </div>
			</div>
		</section>

</asp:Content>
