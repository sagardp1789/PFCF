<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="amin_login.aspx.cs" Inherits="PFCF.Admin.WebForm1" EnableSessionState="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login To Dashboard</title>
    <meta content='admin template, administration template, bootstrap icons, bootstrap template, dashboard, flat design, flat template, bootstrap flat' name='keywords'>
    <meta content='Flat administration template for Twitter Bootstrap. Twitter Bootstrap 3 template with Ruby on Rails support.' name='description'>
    <meta content='BublinaStudio.com' name='author'>
    <meta content='all' name='robots'>
    <meta content='text/html; charset=utf-8' http-equiv='Content-Type'>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!--[if IE]> <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'> <![endif]-->
    
    <link href='assets/images/meta_icons/apple-touch-icon-precomposed.png' rel='apple-touch-icon-precomposed'>
    <!-- / START - page related stylesheets [optional] -->
    
    <!-- / END - page related stylesheets [optional] -->
    <!-- / bootstrap [required] -->
    <link href="assets/stylesheets/bootstrap/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- / theme file [required] -->
    <link href="assets/stylesheets/light-theme.css" rel="stylesheet" type="text/css" media="all"  />
    <!-- / coloring file [optional] (if you are going to use custom contrast color) -->
    <link href="assets/stylesheets/theme-colors.css" rel="stylesheet" type="text/css" media="all" />
    <!-- / demo file [not required!] -->
    <link href="assets/stylesheets/demo.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body class='contrast-red login contrast-background'>
    <div class='middle-container'>
      <div class='middle-row'>
        <div class='middle-wrapper'>
          <div class='login-container-header'>
            <div class='container'>
              <div class='row'>
                <div class='col-sm-12'>
                  <div class='text-center'>
                    <h1 style="color:white">Dashboard @ ProHome</h1>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class='login-container'>
            <div class='container'>
              <div class='row'>
                <div class='col-sm-4 col-sm-offset-4'>
                  <h1 class='text-center title'>Login</h1>
                    <form id="form1" class='validate-form' runat="server">
                  
                    <div class='form-group'>
                      <div class='controls with-icon-over-input'>
                          <asp:TextBox ID="email1"  class="form-control"   placeholder="E-mail" runat="server"></asp:TextBox>
                      
                        <i class='fa fa-user text-muted'></i>
                      </div>
                    </div>
                    <div class='form-group'>
                      <div class='controls with-icon-over-input'>
                          <asp:TextBox ID="pass1"  class="form-control"  placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                      
                          
                        <i class='fa fa-lock text-muted'></i>
                      </div>
                    </div>
                   
                    <asp:Button ID="log" class='btn btn-block' runat="server" Text="login" OnClick="log_Click" /><br />
    
                  </form>
               
                </div>
              </div>
               <center> <asp:Label ID="Label1" forecolor="Red" runat="server"></asp:Label></center>
            </div>
          </div>
          
        </div>
      </div>
    </div>
    <!-- / jquery [required] -->
    <script src="assets/javascripts/jquery/jquery.min.js" type="text/javascript"></script>
    <!-- / jquery mobile (for touch events) -->
    <script src="assets/javascripts/jquery/jquery.mobile.custom.min.js" type="text/javascript"></script>
    <!-- / jquery ui -->
    <script src="assets/javascripts/jquery/jquery-ui.min.js" type="text/javascript"></script>
    <!-- / jQuery UI Touch Punch -->
    <script src="assets/javascripts/jquery/jquery.ui.touch-punch.min.js" type="text/javascript"></script>
    <!-- / bootstrap [required] -->
    <script src="assets/javascripts/bootstrap/bootstrap.js" type="text/javascript"></script>
    <!-- / modernizr -->
    <script src="assets/javascripts/plugins/modernizr/modernizr.min.js" type="text/javascript"></script>
    <!-- / retina -->
    <script src="assets/javascripts/plugins/retina/retina.js" type="text/javascript"></script>
    <!-- / theme file [required] -->
    <script src="assets/javascripts/theme.js" type="text/javascript"></script>
    <!-- / demo file [not required!] -->
    <script src="assets/javascripts/demo.js" type="text/javascript"></script>
    <!-- / START - page related files and scripts [optional] -->
    <script src="assets/javascripts/plugins/validate/jquery.validate.min.js" type="text/javascript"></script>
    <script src="assets/javascripts/plugins/validate/additional-methods.js" type="text/javascript"></script>
    <!-- / END - page related files and scripts [optional] -->
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '../www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-42989202-1', 'auto');
        ga('send', 'pageview');
    </script>
  </body>
</html>
