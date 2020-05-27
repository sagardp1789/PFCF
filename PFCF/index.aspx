<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PFCF.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="index-box">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<h1>PRO<b>HOME</b></h1>
						<h2><strong>Best way to buy material</strong><br />Hire workers<br />Hire Architects.</h2>
					</div>
				</div>
			</div>
			<div class="img-device-container"></div>
			<span class="cover"></span>
		</section>
    <div class="panel panel-default">
    <div class="panel-body">
        <h1>PRO<b>News</b></h1>
        <marquee direction="left"><asp:Label ID="title1" ForeColor="red" runat="server" Font-Bold="True"></asp:Label>-<asp:Label ID="news1" ForeColor="blue" runat="server" Font-Bold="True"></asp:Label></marquee>
        <marquee direction="right"><asp:Label ID="title2" ForeColor="red" runat="server" Font-Bold="True" ></asp:Label>-<asp:Label ID="news2" ForeColor="blue" runat="server" Font-Bold="True"></asp:Label></marquee>
    </div>
    </div>
    <!--TopEngineers-->
	<div class="container">
        <div class="list-box-title">
			<span><i class="icon fa fa-users"></i>Top Engineers</span>
		</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-sm-6 col-md-4">
								<!-- . Agent Box -->
								<div class="agent-box-card rounded">
									<div class="image-content">
										<div class="image image-fill" style="position: relative; overflow: hidden;">
											<asp:Image ID="eimg" runat="server" />
										</div>						
									</div>
									<div class="info-agent">
										<span class="name"><asp:label ID="lblnamee" runat="server"></asp:label></span>
										<div class="text">
											<i class="fa fa-quote-left"></i><asp:label ID="lbldese" runat="server"></asp:label><i class="fa fa-quote-right"></i>
										</div>
										<ul class="contact">
										
											<asp:label ID="lblce" CssClass="name" runat="server"></asp:label>
										</ul>
									</div>
								</div>
							</div><!-- /.col-md-4 -->
							<div class="col-sm-6 col-md-4">
								<!-- . Agent Box -->
								<div class="agent-box-card rounded">
									<div class="image-content">
										<div class="image image-fill" style="position: relative; overflow: hidden;">
											<asp:Image ID="eimg1" runat="server" />
										</div>						
									</div>
									<div class="info-agent">
										<span class="name"><asp:label ID="lblname1e" runat="server"></asp:label></span>
										<div class="text">
											<i class="fa fa-quote-left"></i><asp:label ID="lbldes1e" runat="server"></asp:label><i class="fa fa-quote-right"></i>
										</div>
											<ul class="contact">
										
											<asp:label ID="lblce1" CssClass="name" runat="server"></asp:label>
										</ul>
									</div>
								</div>
							</div><!-- /.col-md-4 -->
							<div class="col-sm-6 col-md-4">
								<!-- . Agent Box -->
								<div class="agent-box-card rounded">
									<div class="image-content">
										<div class="image image-fill" style="position: relative; overflow: hidden;">
											<asp:Image ID="eimg2" runat="server" />
										</div>						
									</div>
									<div class="info-agent">
										<span class="name"><asp:label ID="lblname2e" runat="server"></asp:label></span>
										<div class="text">
											<i class="fa fa-quote-left"></i><asp:label ID="lbldes2e" runat="server"></asp:label><i class="fa fa-quote-right"></i>
										</div>
											<ul class="contact">
										
											<asp:label ID="lblce2" CssClass="name" runat="server"></asp:label>
										</ul>
									</div>
								</div>
							</div><!-- /.col-md-4 -->
							
						</div><!-- /.row -->
					</div>
					
				</div>
			</div><!-- /.container -->

    <!--TopCementSuppliers-->
	<div class="container">
        <div class="list-box-title">
			<span><i class="icon fa fa-users"></i>Top Builders</span>
		</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-sm-6 col-md-4">
								<!-- . Agent Box -->
								<div class="agent-box-card rounded">
									<div class="image-content">
										<div class="image image-fill" style="position: relative; overflow: hidden;">
											<asp:Image ID="bimg" runat="server" />
										</div>						
									</div>
									<div class="info-agent">
										<span class="name"><asp:Label ID="lblnameb" runat="server"></asp:Label></span>
										<div class="text">
											<i class="fa fa-quote-left"></i><asp:Label ID="lbldesb" runat="server"></asp:Label><i class="fa fa-quote-right"></i>
										</div>
										<ul class="contact">
										
											<asp:label ID="lblcb" CssClass="name" runat="server"></asp:label>
										</ul>
									</div>
								</div>
							</div><!-- /.col-md-4 -->
							<div class="col-sm-6 col-md-4">
								<!-- . Agent Box -->
								<div class="agent-box-card rounded">
									<div class="image-content">
										<div class="image image-fill" style="position: relative; overflow: hidden;">
											<asp:Image ID="bimg1" runat="server" />
										</div>						
									</div>
									<div class="info-agent">
										<span class="name"><asp:Label ID="lblname1b" runat="server"></asp:Label></span>
										<div class="text">
											<i class="fa fa-quote-left"></i><asp:Label ID="lbldes1b" runat="server"></asp:Label><i class="fa fa-quote-right"></i>
										</div>
											<ul class="contact">
										
											<asp:label ID="lblcb1" CssClass="name" runat="server"></asp:label>
										</ul>
									</div>
								</div>
							</div><!-- /.col-md-4 -->
							<div class="col-sm-6 col-md-4">
								<!-- . Agent Box -->
								<div class="agent-box-card rounded">
									<div class="image-content">
										<div class="image image-fill" style="position: relative; overflow: hidden;">
											<asp:Image ID="bimg2" runat="server" />
										</div>						
									</div>
									<div class="info-agent">
										<span class="name"><asp:Label ID="lblname2b" runat="server"></asp:Label></span>
										<div class="text">
											<i class="fa fa-quote-left"></i><asp:Label ID="lbldes2b" runat="server"></asp:Label><i class="fa fa-quote-right"></i>
										</div>
											<ul class="contact">
										
											<asp:label ID="lblcb2" CssClass="name" runat="server"></asp:label>
										</ul>
									</div>
								</div>
							</div><!-- /.col-md-4 -->
							
						</div><!-- /.row -->
					</div>
					
				</div>
			</div><!-- /.container -->


    <!--TopBuilders-->
	<div class="container">
        <div class="list-box-title">
			<span><i class="icon fa fa-users"></i>Top Cement Suppliers</span>
		</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-sm-6 col-md-4">
								<!-- . Agent Box -->
								<div class="agent-box-card rounded">
									<div class="image-content">
										<div class="image image-fill" style="position: relative; overflow: hidden;">
											<asp:Image ID="cimg" runat="server" />
										</div>						
									</div>
									<div class="info-agent">
										<span class="name"><asp:label ID="lblnamec" runat="server"></asp:label></span>
										<div class="text">
											<i class="fa fa-quote-left"></i><asp:label ID="lbldesc" runat="server"></asp:label><i class="fa fa-quote-right"></i>
										</div>
										<ul class="contact">
										
											<asp:label ID="lblcc" CssClass="name" runat="server"></asp:label>
										</ul>
									</div>
								</div>
							</div><!-- /.col-md-4 -->
							<div class="col-sm-6 col-md-4">
								<!-- . Agent Box -->
								<div class="agent-box-card rounded">
									<div class="image-content">
										<div class="image image-fill" style="position: relative; overflow: hidden;">
											<asp:Image ID="cimg1" runat="server" />
										</div>						
									</div>
									<div class="info-agent">
										<span class="name"><asp:label ID="lblname1c" runat="server"></asp:label></span>
										<div class="text">
											<i class="fa fa-quote-left"></i><asp:label ID="lbldes1c" runat="server"></asp:label><i class="fa fa-quote-right"></i>
										</div>
											<ul class="contact">
										
											<asp:label ID="lblcc1" CssClass="name" runat="server"></asp:label>
										</ul>
									</div>
								</div>
							</div><!-- /.col-md-4 -->
							<div class="col-sm-6 col-md-4">
								<!-- . Agent Box -->
								<div class="agent-box-card rounded">
									<div class="image-content">
										<div class="image image-fill" style="position: relative; overflow: hidden;">
											<asp:Image ID="cimg2" runat="server" />
										</div>						
									</div>
									<div class="info-agent">
										<span class="name"><asp:label ID="lblname2c" runat="server"></asp:label></span>
										<div class="text">
											<i class="fa fa-quote-left"></i><asp:label ID="lbldes2c" runat="server"></asp:label><i class="fa fa-quote-right"></i>
										</div>
											<ul class="contact">
										
											<asp:label ID="lblcc2" CssClass="name" runat="server"></asp:label>
										</ul>
									</div>
								</div>
							</div><!-- /.col-md-4 -->
							
						</div><!-- /.row -->
					</div>
					
				</div>
			</div><!-- /.container -->
    <!--TopSteel-->
	<div class="container">
        <div class="list-box-title">
			<span><i class="icon fa fa-users"></i>Top steel Suppliers</span>
		</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-sm-6 col-md-4">
								<!-- . Agent Box -->
								<div class="agent-box-card rounded">
									<div class="image-content">
										<div class="image image-fill" style="position: relative; overflow: hidden;">
											<asp:Image ID="simg" runat="server" />
										</div>						
									</div>
									<div class="info-agent">
										<span class="name"><asp:label ID="lblnames" runat="server"></asp:label></span>
										<div class="text">
											<i class="fa fa-quote-left"></i><asp:label ID="lbldess" runat="server"></asp:label><i class="fa fa-quote-right"></i>
										</div>
										<ul class="contact">
										
											<asp:label ID="lblcs" CssClass="name" runat="server"></asp:label>
										</ul>
									</div>
								</div>
							</div><!-- /.col-md-4 -->
							<div class="col-sm-6 col-md-4">
								<!-- . Agent Box -->
								<div class="agent-box-card rounded">
									<div class="image-content">
										<div class="image image-fill" style="position: relative; overflow: hidden;">
											<asp:Image ID="simg1" runat="server" />
										</div>						
									</div>
									<div class="info-agent">
										<span class="name"><asp:label ID="lblname1s" runat="server"></asp:label></span>
										<div class="text">
											<i class="fa fa-quote-left"></i><asp:label ID="lbldes1s" runat="server"></asp:label><i class="fa fa-quote-right"></i>
										</div>
											<ul class="contact">
										
											<asp:label ID="lblcs1" CssClass="name" runat="server"></asp:label>
										</ul>
									</div>
								</div>
							</div><!-- /.col-md-4 -->
							<div class="col-sm-6 col-md-4">
								<!-- . Agent Box -->
								<div class="agent-box-card rounded">
									<div class="image-content">
										<div class="image image-fill" style="position: relative; overflow: hidden;">
											<asp:Image ID="simg2" runat="server" />
										</div>						
									</div>
									<div class="info-agent">
										<span class="name"><asp:label ID="lblname2s" runat="server"></asp:label></span>
										<div class="text">
											<i class="fa fa-quote-left"></i><asp:label ID="lbldes2s" runat="server"></asp:label><i class="fa fa-quote-right"></i>
										</div>
											<ul class="contact">
										
											<asp:label ID="lblcs2" CssClass="name" runat="server"></asp:label>
										</ul>
									</div>
								</div>
							</div><!-- /.col-md-4 -->
							
						</div><!-- /.row -->
					</div>
					
				</div>
			</div><!-- /.container -->


    <section id="submit-property" data-parallax-speed="0">
			<span class="overlay"></span>
			<div class="container">
				<div class="section-detail">
					<h1>Submit Business</h1>
					<h2>Add your business on our website.<br />   </h2>	
				</div>
				<div class="row text-center">
					<a href="create-business.aspx" class="btn btn-reverse button-large">Create</a>
				</div>
			</div>
		</section>
    <br />
    <br />
</asp:Content>
