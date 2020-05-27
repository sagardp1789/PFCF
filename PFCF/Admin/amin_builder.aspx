<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_master.Master" AutoEventWireup="true" CodeBehind="amin_builder.aspx.cs" Inherits="PFCF.Admin.amin_builder" %>
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
                
                <strong>Builders On ProHome</strong>
                
              </div>
             
              
            </div>
          </div>

		  <div class='row'>
                <div class='col-sm-12'>
                  <div class='box bordered-box orange-border' style='margin-bottom:0;'>
                    <div class='box-header orange-background'>
                      <div class='title'>Builders</div>
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
                                <th>Id</th>
                                <th>Business</th>
                                <th>Agency_Name</th>
                                <th>Description</th>
                                  <th>Full_Name</th>
                                  <th>Email</th>
                                  <th>Phone</th>
                                  <th>Address_Line1</th>
                                  <th>Address_Line2</th>
                                  <th>City</th>
                                  <th>Pin_Code</th>
                                  <th>Password</th>
                                  <th>image</th>
                                  <th>Service</th>
                                  <th>Facebook</th>    
                                  <th>Twitter</th>    
                                  <th>Google</th>    
                                 </tr>
                           </thead>
                             <tbody>
                              <asp:Repeater ID="table1" runat="server">
                                  <ItemTemplate>
                                        <tr>
                                            <td><asp:Label ID="Id" runat="server" Text='<%# Eval("Id") %>'></asp:Label></td>
                                            <td><asp:Label ID="Business" runat="server" Text='<%# Eval("Business") %>'></asp:Label></td>
                                            <td><asp:Label ID="Agency_Name" runat="server" Text='<%# Eval("Agency_Name") %>'></asp:Label></td>
                                            <td><asp:Label ID="Description" runat="server" Text='<%# Eval("Description") %>'></asp:Label></td>
                                            <td><asp:Label ID="Full_Name" runat="server" Text='<%# Eval("Full_Name") %>'></asp:Label></td>
                                            <td><asp:Label ID="Email" runat="server" Text='<%# Eval("Email") %>'></asp:Label></td>
                                            <td><asp:Label ID="Phone" runat="server" Text='<%# Eval("Phone") %>'></asp:Label></td>
                                            <td><asp:Label ID="Address_Line1" runat="server" Text='<%# Eval("Address_Line1") %>'></asp:Label></td>
                                            <td><asp:Label ID="Address_Line2" runat="server" Text='<%# Eval("Address_Line2") %>'></asp:Label></td>
                                            <td><asp:Label ID="City" runat="server" Text='<%# Eval("City") %>'></asp:Label></td>
                                            <td><asp:Label ID="Pin_Code" runat="server" Text='<%# Eval("Pin_Code") %>'></asp:Label></td>
                                            <td><asp:Label ID="Password" runat="server" Text='<%# Eval("Password") %>'></asp:Label></td>
                                            <td><asp:Label ID="image" runat="server" Text='<%# Eval("image") %>'></asp:Label></td>
                                            <td><asp:Label ID="Service" runat="server" Text='<%# Eval("Service") %>'></asp:Label></td>
                                            <td><asp:Label ID="Facebook" runat="server" Text='<%# Eval("Facebook") %>'></asp:Label></td>
                                            <td><asp:Label ID="Twitter" runat="server" Text='<%# Eval("Twitter") %>'></asp:Label></td>
                                            <td><asp:Label ID="Google" runat="server" Text='<%# Eval("Google") %>'></asp:Label></td>
                                            
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
      </section>

</asp:Content>
