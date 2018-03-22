<%@ Page Title="HomePage" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="gymApplication.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!---------------This div is where the validation will be displayed--------------------------->
    <div id="MessageArea" runat="server" class="d-flex justify-content-center container-fluid">
         <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert alert-warning bg-warning " ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="The Passoword cannot be blank" ></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert alert-warning bg-warning " ID="RequiredFieldValidator1" runat="server" ControlToValidate="Email" ErrorMessage="The email address cannot be blank"></asp:RequiredFieldValidator>
    </div>
   

    <div class="container ">

        <div class="row mt-5"> 
            <div class="col-sm-12 col-md-6 col-lg-8">
                <div class="row ">
                    <div class="col-12">
                        <img src="/pictures/sprint.jpeg" class="img-fluid" alt="login page picture" />
                    </div>
                </div>

            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 justify-content-center mt-sm-5">
                <%--<div class="col-sm-3 col-md-6" style="background-color: #E3E5E5;">--%>

                <div class="form-group row ">

                    <label for="exampleInputEmail1" class="col-sm-2 col-md-4 col-lg-4 col-form-label">
                        Email address
                    </label>

                    <div class="col-lg-6 col-md-8 col-sm-10">
                        <asp:TextBox ID="Email" runat="server" OnTextChanged="TextBox1_TextChanged" CssClass="form-control"></asp:TextBox>
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                </div>
                <div class="form-group row ">
                    <label for="exampleInputPassword1" class="col-sm-2 col-md-4 col-lg-4 col-form-label">Password</label>
                    <div class="col-lg-6 col-md-8 col-sm-10">
                        <asp:TextBox ID="Password" runat="server" OnTextChanged="TextBox1_TextChanged" CssClass=" form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row mt-lg-5 mt-md-5 ">
                    <div class="col text-center">
                        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary mr-auto" OnClick="Button1_Click" />
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>

