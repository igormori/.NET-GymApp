<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/GraphMasterWebPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="gymApplication.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
    </div>
    <div style="height: 80px;"></div>
    <div class="row justify-content-center">
        
        <h1 class="display-3">Contact us</h1>
        <div style="height: 100px;"></div>
    </div>
    <div class="row justify-content-center">
        <div class="col-sm-3">
            <div class="form-group">

                <label for="formGroupExampleInput"></label>

                <asp:TextBox ID="txtFName" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
                <div class="row justify-content-center" style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFName" ErrorMessage="First Name Required"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label for="formGroupExampleInput"></label>
                <asp:TextBox class="form-control" ID="txtLName" runat="server" placeholder="Last Name"></asp:TextBox>
                <div class="row justify-content-center" style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLName" ErrorMessage="Last Name Required"></asp:RequiredFieldValidator>
                </div>
            </div>

        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-sm-3">
            <div class="form-group">
                <label for="formGroupExampleInput"></label>

                <asp:TextBox ID="txtPhone" runat="server" class="form-control" placeholder="Phone Number"></asp:TextBox>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label for="formGroupExampleInput"></label>

                <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                <div class="row justify-content-center" style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
    </div>


    <div class="row justify-content-center">
        <div class="col-sm-6">
            <div class="form-group">
                <label for="exampleFormControlTextarea1"></label>
                <asp:TextBox Height="100px" ID="txtMessage" runat="server">Message</asp:TextBox>  
            </div>
        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-sm-4">
            <label>Select Feedback Type:</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                <label class="form-check-label" for="exampleRadios1">
                    Report Bug
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
                <label class="form-check-label" for="exampleRadios2">
                    Design/Ease of Use
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3" value="option3">
                <label class="form-check-label" for="exampleRadios3">
                    Other
                </label>
            </div>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-sm-1">
            <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary" OnClick="Button1_Click" />

        </div>
    </div>


</asp:Content>
