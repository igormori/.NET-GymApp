<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ResetPage.aspx.cs" Inherits="gymApplication.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-0">
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12">
                                <%if (Request.QueryString["reset"] != null)
                    {%>
                <div class="row">
                    <div class="form-group row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <h2><asp:Label ID="lblsuccess" runat="server" Text=""></asp:Label></h2>
                            </br>
                             <a class="text-primary font-weight-bold" href="login.aspx">Sign in</a>
                        </div>
                    </div>
                </div>
                                <%}
                else
                {  %>
                <div class="row">
                    <div class="form-group row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <h2>Reset Password</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNewpassword" ErrorMessage="Field cannot be blank" Style="color: #FF0000"></asp:RequiredFieldValidator>
                            <asp:TextBox CssClass="rounded" Height="40px" Width="250px" ID="txtNewpassword" runat="server" placeholder="New Password"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRepNewpassword" ErrorMessage="Field cannot be blank" Style="color: #FF0000"></asp:RequiredFieldValidator>
                            <asp:TextBox CssClass="rounded" ID="txtRepNewpassword" runat="server" placeholder="ReType New Password" Height="40px" Width="250px"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <asp:Button CssClass="btn btn_primary" ID="btnRestPassword" runat="server" Text="Button" Width="150px" OnClick="btnRestPassword_Click" />
                        </div>
                    </div>
                </div>
                <%} %>
                <div class="row">
                    <div class="form-group row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <asp:Label ID="lblreset" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12">
            </div>
        </div>
    </div>



</asp:Content>
