<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_master.Master" AutoEventWireup="true" CodeBehind="amin_index.aspx.cs" Inherits="PFCF.Admin.amin_index" %>
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
                  <span>Dashboard @ ProHome</span>
                </h1>
                
              </div>
              <div class='alert alert-info alert-dismissable'>
                <a class='close' data-dismiss='alert' href='#'>&times;</a>
                Welcome to
                <strong>Dashboard</strong>
                Of ProHome
              </div>
              <div class='col-sm-10'>
                  <div class='box'>
                    <div class='box-header'>
                      <div class='title'>Registered Suppliers :</div>
                    </div><br>
                    <div class='box-content'>
                      <div class='row'>
                        <div class='col-sm-3'>
                          <div class='box-quick-link blue-background'>
                            <a href="amin_cement.aspx">
                              <div class='header'>
                                <div class='fa fa-user'></div>
                              </div>
                              <div class='content'><b>Cement Supplier</b></div>
                            </a>
                          </div>
                        </div>
                        <div class='col-sm-3'>
                          <div class='box-quick-link blue-background'>
                            <a href="amin_steel.aspx">
                              <div class='header'>
                                <div class='fa fa-user'></div>
                              </div>
                              <div class='content'><b>Steel Supplier</b></div>
                            </a>
                          </div>
                        </div>
                        <div class='col-sm-3'>
                          <div class='box-quick-link blue-background'>
                            <a href="amin_builder.aspx">
                              <div class='header'>
                                <div class='fa fa-user'></div>
                              </div>
                              <div class='content'><b>Builders</b></div>
                            </a>
                          </div>
                        </div>
                        <div class='col-sm-3'>
                          <div class='box-quick-link blue-background'>
                            <a href="amin_engineer.aspx">
                              <div class='header'>
                                <div class='fa fa-user'></div>
                              </div>
                              <div class='content'><b>Engineers</b></div>
                            </a>
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
