<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_master.Master" AutoEventWireup="true" CodeBehind="amin_urequests.aspx.cs" Inherits="PFCF.Admin.amin_urequests" %>
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
                <strong>Users Requested for services</strong>
              </div>
                <div class='row'>
                <div class='col-sm-12'>
                  <div class='box bordered-box orange-border' style='margin-bottom:0;'>
                    <div class='box-header orange-background'>
                      <div class='title'>Requests</div>
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
                                <th>Seller_Id</th>
                                  <th>Agency_Name</th>
                                  <th>Full_Name</th>
                                  <th>Email</th>
                                  <th>Phone</th>
                                  <th>Address</th>
                                  <th>Requirements</th> 
                                   <th>Date&Time</th>   
                                      
                                 </tr>
                           </thead>
                             <tbody>
                              <asp:Repeater ID="tableur" runat="server">
                                  <ItemTemplate>
                                        <tr>
                                            <td><asp:Label ID="Id" runat="server" Text='<%# Eval("Id") %>'></asp:Label></td>
                                            <td><asp:Label ID="BId" runat="server" Text='<%# Eval("BId") %>'></asp:Label></td>
                                            <td><asp:Label ID="Agency_Name" runat="server" Text='<%# Eval("Agency_Name") %>'></asp:Label></td>
                                            <td><asp:Label ID="Full_Name" runat="server" Text='<%# Eval("Full_Name") %>'></asp:Label></td>
                                            <td><asp:Label ID="Email" runat="server" Text='<%# Eval("Email") %>'></asp:Label></td>
                                            <td><asp:Label ID="Phone" runat="server" Text='<%# Eval("Phone") %>'></asp:Label></td>
                                            <td><asp:Label ID="Address" runat="server" Text='<%# Eval("Address") %>'></asp:Label></td>
                                            <td><asp:Label ID="Requirement" runat="server" Text='<%# Eval("Requirement") %>'></asp:Label></td>
                                            <td><asp:Label ID="date" runat="server" Text='<%# Eval("Date") %>'></asp:Label></td>
                                            
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
