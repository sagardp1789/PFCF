<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_master.Master" AutoEventWireup="true" CodeBehind="amin_users.aspx.cs" Inherits="PFCF.Admin.amin_users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Registered Users</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section id='content'>
        <div class='container'>
          <div class='row' id='content-wrapper'>
            <div class='col-xs-12'>
              
              <div class='page-header page-header-with-buttons'>
                <h1 class='pull-left'>
                  <i class='fa fa-tachometer'></i>
                  <span>Dashboard</span>
                </h1>
                
              </div>
              <div class='alert alert-info alert-dismissable'>
                <a class='close' data-dismiss='alert' href='#'>&times;</a>
                
                <strong>Registered Users On ProHome</strong>
                
              </div>
             
              
            </div>
          </div>
		  
		  
                    <div class='box'>
                   <div class='page-header page-header-with-buttons'>
                <h1 class='pull-left'>
                  <i class='fa fa-users'></i>
                  <span>Users</span>
                </h1><br>
                
              </div>
                    <div class='row'>
                      <div class='col-sm-12 col-lg-4'>
                       <a href="amin_aminuser.aspx">
                           <div class='box-content box-statistic text-right'>
                          <h3 class='title text-error'>Admin</h3>
                          <small>Administrator</small>
                          <div class='text-error fa fa-user align-left'></div>
                            </div>
                           </a>
                        </div>
                        <div class='col-sm-12 col-lg-4'>
                            <a href="amin_empuser.aspx">
                        <div class='box-content box-statistic text-right'>
                          <h3 class='title text-error'>Employee</h3>
                          <small>Employee</small>
                          <div class='text-error fa fa-user align-left'></div>
                            </div>
                                </a>
                        </div>
                        
                        
                      </div>
                    </div>
                  
		         <div class='box'>
                   
                    <div class='row'>
                      <div class='col-sm-12 col-lg-12'>
                        <div class='box-content box-statistic text-left'>
                          <h3 class='title text-error'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add User</h3>
                          <div class='text-error fa fa-plus align-left'></div>
                            </div>
                        </div>
                    </div> 
		         </div>

          
        </div>
          
          <div class='login-container'>
            <div class='container'>
              <div class='row'>
                <div class='col-sm-4 col-sm-offset-4'>
                  
                 
                      <div class='form-group'>
                      <div class='controls with-icon-over-input'>
                        <asp:TextBox ID="fname" placeholder="Full Name" class="form-control" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" ForeColor="red" ErrorMessage="Required"></asp:RequiredFieldValidator>
                      </div>
                    </div>
                    <div class='form-group'>
                      <div class='controls with-icon-over-input'>
                         <asp:TextBox ID="email" placeholder="E-mail" class="form-control" runat="server"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="emailv1" runat="server" ForeColor="Red"  ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Enter Valid Email"></asp:RegularExpressionValidator>
                      </div>
                    </div>
                    <div class='form-group'>
                      <div class='controls with-icon-over-input'>
                        <asp:TextBox ID="pass" placeholder="Password" textmode="Password" class="form-control" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ForeColor="red" ErrorMessage="Required"></asp:RequiredFieldValidator>
                      </div>
                    </div>
                      <div class='form-group'>
                      <div class='controls with-icon-over-input'>
                         <asp:TextBox ID="pass1" placeholder="Confirm Password" textmode="Password" class="form-control" runat="server"></asp:TextBox>
                           <asp:CompareValidator ID="cpassv" runat="server" ForeColor="Red" ControlToValidate="pass1" ControlToCompare="pass" ErrorMessage="Password doesnot match"></asp:CompareValidator>
                      </div>
                      </div>
                      <label for='agreement'>Add User As : </label><br>
                      <asp:RadioButton ID="admin" runat="server" Text="Administrator" GroupName="user" />
                      <asp:RadioButton ID="emp" runat="server"  Text="Employee" GroupName="user" /><br><br>
                    
                     <asp:Button class='btn btn-block' ID="add" runat="server" Text="Add User" OnClick="add_Click" />
                 <br>
                 
                </div>
              </div>
            </div>
          </div>
      </section>
   
</asp:Content>
