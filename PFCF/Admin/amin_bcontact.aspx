<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_master.Master" AutoEventWireup="true" CodeBehind="amin_bcontact.aspx.cs" Inherits="PFCF.Admin.amin_bcontact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                <strong>contact mails from registered suppliers on ProHome</strong>
              </div>
                <div class='row'>
                <div class='col-sm-12'>
                  <div class='box bordered-box orange-border' style='margin-bottom:0;'>
                    <div class='box-header orange-background'>
                      <div class='title'>suppliers Contact</div>
                      <div class='actions'>
                        <a class="btn box-remove btn-xs btn-link" href="#"><i class='fa fa-times'></i>
                        </a>
                        <a class="btn box-collapse btn-xs btn-link" href="#"><i></i>
                        </a>
                      </div>
                    </div>
                    <div class='box-content box-no-padding'>
                      <div class='responsive-table'>
                        <div class='scrollable-area'>
                          <table class='data-table table table-bordered table-striped' style='margin-bottom:0;'>
                             <thead>
                              <tr>
                                <th>ID</th>
                                <th>Full_Name</th>
                                <th>Email</th>
                                <th>Subject</th>
                                <th>Message</th>
                                     
                                 </tr>
                           </thead>
                             <tbody>
                              <asp:Repeater ID="table1" runat="server">
                                  <ItemTemplate>
                                        <tr>
                                            <td><asp:Label ID="Id" runat="server" Text='<%# Eval("Id") %>'></asp:Label></td>
                                            <td><asp:Label ID="Full_Name" runat="server" Text='<%# Eval("Full_Name") %>'></asp:Label></td>
                                            <td><asp:Label ID="Email" runat="server" Text='<%# Eval("Email") %>'></asp:Label></td>
                                            <td><asp:Label ID="Subject" runat="server" Text='<%# Eval("Subject") %>'></asp:Label></td>
                                            <td><asp:Label ID="Message" runat="server" Text='<%# Eval("Message") %>'></asp:Label></td>
                                       </tr>
                                  </ItemTemplate>
                              </asp:Repeater>
                             </tbody> 
                          </table>
                         </div>
                    </div>
                  </div>
		        </div>
                    </div>
		        </div>
                </div>
              </div>
            </div>
       
       </section>
</asp:Content>
