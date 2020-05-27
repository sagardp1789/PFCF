<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="eng_reg.aspx.cs" Inherits="PFCF.eng_reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                     <!-- Cement Supplier Registeration page -->
    <section id="header-page" class="header-margin-base">
			<div class="skyline">
				<div data-offset="50" class="p1 parallax"></div>
				<div data-offset="25" class="p2 parallax"></div>
				<div data-offset="15" class="p3 parallax"></div>
				<div data-offset="8"  class="p4 parallax"></div>
				<span class="cover"></span>
				<div class="container header-text">
					<div><h1 class="title">Create Business</h1></div>
					<div><h2 class="sub-title">Engineer's Register</h2></div>
				</div>
			</div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="index.aspx"><i class="fa fa-home"></i></a></li>
						<li><a href="create-business.aspx">Create Business</a></li>
						<li class="active">Engineer's Register</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->

	

		<section id="create-agency">
            
			<div class="container">
				<div class="row">
					
					<div class="col-sm-9 col-md-6">
						<div class="section-title line-style no-margin">
							<h3 class="title">General Info</h3>
						</div>
						<ul class="profile create">
                            <li>
                                <span>&nbsp Business</span><asp:TextBox ID="bus" runat="server" Text="Cement" Enabled="False"></asp:TextBox>
                            </li>
							<li>
								<span><asp:RequiredFieldValidator ID="agnamev"  runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="agname"></asp:RequiredFieldValidator>Agency Name</span>
								<asp:TextBox ID="agname" placeholder="Enter Your Agency Name" class="form-control" runat="server"></asp:TextBox>
                           </li>
							<li>
								<span><asp:RequiredFieldValidator ID="descriptionv"  runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="description"></asp:RequiredFieldValidator>Description</span> 
                                <asp:TextBox ID="description" placeholder="Description About Business....." class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
							</li>
						</ul>

						<div class="section-title line-style">
							<h3 class="title">Personal Info</h3>
						</div>
						<ul class="profile create">
							
							<li>
								<span><asp:RequiredFieldValidator ID="fnamev"  runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="fname"></asp:RequiredFieldValidator>Full Name</span>
								<asp:TextBox ID="fname" placeholder="Enter your Full Name" class="form-control" runat="server"></asp:TextBox>
                                
							</li>
							<li>
								<span><asp:RequiredFieldValidator ID="emailv"  runat="server" ForeColor="Red" ErrorMessage ="*" ControlToValidate="email"></asp:RequiredFieldValidator>Email</span>
                                <asp:TextBox ID="email" placeholder="Enter Email Address" class="form-control" runat="server"></asp:TextBox>
							    
                            </li>
							<li>
								<span><asp:RequiredFieldValidator ID="phonev" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="phone"></asp:RequiredFieldValidator>Phone</span>
                                <asp:TextBox ID="phone" placeholder="Enter Contact No" class="form-control" TextMode="Phone" runat="server"></asp:TextBox>
                                
							
                            </li>
                            <li>
								<span><asp:RequiredFieldValidator ID="imgupv" runat="server" ForeColor="Red" ControlToValidate="imgup" ErrorMessage="*"></asp:RequiredFieldValidator>Upload Image </span>
								<asp:FileUpload ID="imgup" runat="server" />
                                
							</li>
							
						</ul>
						

						<div class="section-title line-style">
							<h3 class="title">Security Info</h3>
						</div>

						<ul class="profile create">
							
							<li>
								<span><asp:RequiredFieldValidator ID="passv" runat="server" ForeColor="Red" ControlToValidate="password" ErrorMessage="*"></asp:RequiredFieldValidator>Password</span>
                                <asp:TextBox ID="password" placeholder="Enter password" TextMode="Password" class="form-control" runat="server"></asp:TextBox>
                            </li>
            
							<li>
								<span>Confirm Password</span>
                                <asp:TextBox ID="cpassword" placeholder="Re-Enter Password" TextMode="Password" class="form-control" runat="server"></asp:TextBox>
                                
							</li>
                        </ul>

						
					</div>

					<div class="col-sm-12 col-md-4">
						<div class="section-title line-style no-margin">
							<h3 class="title">Position Info</h3>
						</div>
						<ul class="profile create">
							<li>
								<span><asp:RequiredFieldValidator ID="ad1v" runat="server" ForeColor="Red" ControlToValidate="address1" ErrorMessage="*"></asp:RequiredFieldValidator>Address Line 1</span> 
                                 <asp:TextBox ID="address1" placeholder="A/P./Tehsil/District.." class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                
                            </li>
							<li>
								<span>Address Line 2</span>
                                <asp:TextBox ID="address2" placeholder="Building Name/Flat No./House No." class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                
							</li>
							<li>
								<span><asp:RequiredFieldValidator ID="cityv" runat="server" ForeColor="Red" ControlToValidate="city" ErrorMessage="*"></asp:RequiredFieldValidator>City</span>
                                <asp:TextBox ID="city" placeholder="Enter City Name" class="form-control" runat="server"></asp:TextBox>
								
							</li>
							<li> 
								<span><asp:RequiredFieldValidator ID="pinv" runat="server" ForeColor="Red" ControlToValidate="pin" ErrorMessage="*"></asp:RequiredFieldValidator>Pin Code</span>
								
                                <asp:TextBox ID="pin" placeholder="Enter Pin-Code" class="form-control" runat="server"></asp:TextBox>
                                
                           </li>
						</ul>

						<div class="section-title line-style">
							<h3 class="title">Service Information</h3>
						</div>
							<ul class="profile create">
								<li>
									<span><asp:RequiredFieldValidator ID="skillv" runat="server" ForeColor="Red" ControlToValidate="service" ErrorMessage="*"></asp:RequiredFieldValidator>Your Skills</span>
								    <asp:TextBox ID="service" class="form-control" placeholder="Eg: Serveying, Drawing, Architecting" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    
								</li>

							</ul>
					
                        <div class="section-title line-style">
							<h3 class="title">Term & Condition</h3>
						   
						</div>
						<div class="terms"><strong>requred</strong>,     </div>
						
                       </div><!-- /.col-md-4 -->
				</div>
				<div class="row">
					<div class="col-sm-12 col-md-8 text-right">
                        
                        
                                        	&nbsp;&nbsp;&nbsp;
                                        	
                    
                        <asp:Button ID="create" class="btn btn-default signin-button" runat="server" Text="create" OnClick="create_Click" />
                    <ul  class="profile create">
                        <li><asp:RegularExpressionValidator ID="emailv1" runat="server" ForeColor="Red" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Please enter valid email address "></asp:RegularExpressionValidator></li>
					    <li><asp:RegularExpressionValidator ID="phonev2" runat="server" ForeColor="Red" ControlToValidate="phone" ValidationExpression="^([+][9][1]|[9][1]|[0]){0,1}([7-9]{1})([0-9]{9})$" ErrorMessage="Please enter valid phone no"></asp:RegularExpressionValidator></li>
                        <li><asp:RegularExpressionValidator ID="imgupv1" runat="server" ForeColor="Red" ControlToValidate="imgup" ValidationExpression=".*\.([gG][iI][fF]|[jJ][pP][gG]|[jJ][pP][eE][gG]|[bB][mM][pP])$" ErrorMessage="Please Upload image"></asp:RegularExpressionValidator></li>
                        <li><asp:CompareValidator ID="cpassv" runat="server" ForeColor="Red" ControlToValidate="cpassword" ControlToCompare="password" ErrorMessage="Password does not match"></asp:CompareValidator></li>
                        <li><asp:RegularExpressionValidator ID="pinv1" ForeColor="Red" ValidationExpression="^([1-9])([0-9]){5}$" ControlToValidate="pin" runat="server" ErrorMessage="Invalid pin code"></asp:RegularExpressionValidator></li>
                         </ul>
                    </div>
				</div>
			</div>
		</section>

</asp:Content>
