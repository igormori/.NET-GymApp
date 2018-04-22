<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="gymApplication.WebForm12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-0">
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="row">
                    <div class="form-group row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <h2>Recover Password</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <h5>Please enter your email address to varify your identity:</h5>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Field cannot be blank" Style="color: #FF0000"></asp:RequiredFieldValidator>
                            <asp:TextBox CssClass="rounded" Height="40px" Width="250px" class="text-center" ID="txtEmail" runat="server" placeholder="Enter Email"></asp:TextBox>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUser" ErrorMessage="Field cannot be blank" Style="color: #FF0000"></asp:RequiredFieldValidator>
                            <asp:TextBox CssClass="rounded" Height="40px" Width="250px" class="text-center" ID="txtUser" runat="server" placeholder="Enter username"></asp:TextBox>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <asp:Button class="btn btn-primary  text-center" ID="btn_reset" runat="server" Text="Reset Password" OnClick="btn_reset_Click" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <asp:Label ID="lblresetpass" runat="server" Text="" ForeColor="red"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-0">
            </div>
        </div>
    </div>


</asp:Content>






