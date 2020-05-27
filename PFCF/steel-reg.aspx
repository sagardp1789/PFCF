<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="steel-reg.aspx.cs" Inherits="PFCF.steel_reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Registeration page -->
		
		<section id="header-page" class="header-margin-base">
			<div class="skyline">
				<div data-offset="50" class="p1 parallax"></div>
				<div data-offset="25" class="p2 parallax"></div>
				<div data-offset="15" class="p3 parallax"></div>
				<div data-offset="8"  class="p4 parallax"></div>
				<span class="cover"></span>
				<div class="container header-text">
					<div><h1 class="title">Create Business</h1></div>
					<div><h2 class="sub-title">Steel Supplier Register</h2></div>
				</div>
			</div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="index.aspx"><i class="fa fa-home"></i></a></li>
						<li><a href="create-business.aspx">Create Business</a></li>
						<li class="active">Steel Supplier Register</li>
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
                                <span>&nbsp Business</span><asp:TextBox ID="bus" runat="server" Text="Steel" Enabled="False"></asp:TextBox>
                            </li>
							<li>
								<span> <asp:RequiredFieldValidator ID="agnamev" ForeColor="Red" runat="server" ControlToValidate="agname" ErrorMessage="*"></asp:RequiredFieldValidator>Agency Name</span>
								
                                <asp:TextBox ID="agname" placeholder="Enter Your Agency Name" class="form-control" runat="server"></asp:TextBox>
							</li>
							<li>
								<span><asp:RequiredFieldValidator ID="descv" ForeColor="Red" runat="server" ControlToValidate="description" ErrorMessage="*"></asp:RequiredFieldValidator> Description</span> 
                                <asp:TextBox ID="description" placeholder="Description About Business....." class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
								                              
							</li>
						</ul>

						<div class="section-title line-style">
							<h3 class="title">Personal Info</h3>
						</div>
						<ul class="profile create">
							
							<li>
								<span><asp:RequiredFieldValidator ID="fnamev" runat="server" ForeColor="Red" ControlToValidate="fname" ErrorMessage="*"></asp:RequiredFieldValidator> Full Name</span>
								<asp:TextBox ID="fname" placeholder="Enter your Full Name" class="form-control" runat="server"></asp:TextBox>
							</li>
							<li>
								<span><asp:RequiredFieldValidator ID="emailv" runat="server" ForeColor="Red" ControlToValidate="email" ErrorMessage="*"></asp:RequiredFieldValidator> Email</span>
                                <asp:TextBox ID="email" placeholder="Enter Email Address" class="form-control" runat="server"></asp:TextBox>
							</li>
							<li>
								<span><asp:RequiredFieldValidator ID="phonev" runat="server" ForeColor="Red" ControlToValidate="phone" ErrorMessage="*"></asp:RequiredFieldValidator> Phone</span>
								
							<asp:TextBox ID="phone" placeholder="Enter Contact No" class="form-control" runat="server"></asp:TextBox>
							
                            </li>
                            <li>
								<span> <asp:RequiredFieldValidator ID="imgv" ForeColor="Red" runat="server" ControlToValidate="imgup" ErrorMessage="*"></asp:RequiredFieldValidator>Upload Image </span>
								<asp:FileUpload ID="imgup" runat="server" />
							</li>
							
						</ul>
						

						<div class="section-title line-style">
							<h3 class="title">Security Info</h3>
						</div>

						<ul class="profile create">
							
							<li>
								<span><asp:RequiredFieldValidator ID="passswordv" ForeColor="Red" runat="server" ControlToValidate="password" ErrorMessage="*"></asp:RequiredFieldValidator> Password</span>
                            <asp:TextBox ID="password" placeholder="Enter password" TextMode="Password" class="form-control" runat="server"></asp:TextBox>
                            
							</li>
            
							<li>
								<span><asp:RequiredFieldValidator ID="cpasswordv" runat="server" ForeColor="Red" ControlToValidate="cpassword" ErrorMessage="*"></asp:RequiredFieldValidator> Confirm Password</span>
                                <asp:TextBox ID="cpassword" placeholder="Re-Enter Password" class="form-control" TextMode="Password" runat="server"></asp:TextBox>
								
							</li>
														
						</ul>

						
					</div>

					<div class="col-sm-12 col-md-4">
						<div class="section-title line-style no-margin">
							<h3 class="title">Position Info</h3>
						</div>
						<ul class="profile create">
							<li>
								<span><asp:RequiredFieldValidator ID="addressv" runat="server" ForeColor="Red" ControlToValidate="address1" ErrorMessage="*"></asp:RequiredFieldValidator> Address Line 1</span> 
                                 <asp:TextBox ID="address1" placeholder="A/P./Tehsil/District.." class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
							</li>
							<li>
								<span>Address Line 2</span>
                                <asp:TextBox ID="address2" placeholder="Building Name/Flat No./House No." class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
								
							</li>
							<li>
								<span><asp:RequiredFieldValidator ID="cityv" runat="server" ForeColor="Red" ControlToValidate="city" ErrorMessage="*"></asp:RequiredFieldValidator> City</span>
                                <asp:TextBox ID="city" placeholder="Enter City Name" class="form-control" runat="server"></asp:TextBox>
								
							</li>
							<li>
								<span><asp:RequiredFieldValidator ID="pinv" runat="server" ForeColor="Red" ControlToValidate="pin" ErrorMessage="*"></asp:RequiredFieldValidator> Pin Code</span>
								
                                <asp:TextBox ID="pin" placeholder="Enter Pin-Code" class="form-control" runat="server"></asp:TextBox>
							</li>
						</ul>

						<div class="section-title line-style">
							<h3 class="title">Service information</h3>
						</div>
							<ul class="profile create">
								<li>
									<span><asp:RequiredFieldValidator ID="skillv" ForeColor="Red" runat="server" ControlToValidate="service" ErrorMessage="*"></asp:RequiredFieldValidator>Steel Sizes</span>
								    <asp:TextBox ID="service" class="form-control" placeholder="Eg: 152×475mm (UKC), 152×152, etc" TextMode="MultiLine" runat="server"></asp:TextBox>
								</li>
							</ul>
							
							
						

						<div class="section-title line-style">
							<h3 class="title">Term & Condition</h3>
						</div>
						<div class="terms">
                       
					</div><!-- /.col-md-4 -->
				</div>
				<div class="row">
					<div class="col-sm-12 col-md-8 text-right">
						
                                        <asp:Button class="btn btn-default signin-button" ID="Button1" runat="server" Text="Create Agency" OnClick="Button1_Click1" />
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
