<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="gymApplication.WebForm12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="background-color: aquamarine">
        <div class="form-group row">

            <div class="col-lg-6 col-md-6 col-sm-12 mx-auto ">
                <h2>Recover Password</h2>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-lg-12 col-md-12 col-sm-12 mx-auto ">
                <h5>Please enter your email address to varify your identity:</h5>

            </div>
        </div>
        <div class="form-group row">
            <div class="col-lg-12 col-md-12 col-sm-12 mx-auto ">
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Field cannot be blank" Style="color: #FF0000"></asp:RequiredFieldValidator>

                <asp:TextBox class="text-center" ID="txtEmail" runat="server" placeholder="Enter Email"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-lg-12 col-md-12 col-sm-12 mx-auto ">
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUser" ErrorMessage="Field cannot be blank" Style="color: #FF0000"></asp:RequiredFieldValidator>

                <asp:TextBox class="text-center" ID="txtUser" runat="server" placeholder="Enter username"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-lg-12 col-md-12 col-sm-12 mb-3 ">
                <asp:Button class="btn btn-primary  text-center" ID="btn_reset" runat="server" Text="Reset Password" OnClick="btn_reset_Click" />
            </div>
        </div>
                <div class="form-group row">
            <div class="col-lg-12 col-md-12 col-sm-12 mb-3 ">
                <asp:Label ID="lblresetpass" runat="server" Text="" ForeColor="red"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>






