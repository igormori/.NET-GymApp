<%@ Page Title="HomePage" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="gymApplication.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!---------------This div is where the validation will be displayed--------------------------->
    <div id="MessageArea" runat="server" class="d-flex justify-content-center container-fluid">
         <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert alert-warning bg-warning " ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="The Passoword cannot be blank" ></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert alert-warning bg-warning " ID="RequiredFieldValidator1" runat="server" ControlToValidate="Email" ErrorMessage="The email address cannot be blank"></asp:RequiredFieldValidator>
    </div>
   

    <div class="container">


        <div class="row mt-5"> 
            <div class="col-sm-12 col-md-6 col-lg-8">
                <div class="row ">
                    <div class="col-12">
                        <img src="/pictures/sprint.jpeg" class="img-fluid" alt="login page picture" />
                    </div>
                </div>

            </div>
            <div class="col-sm-12 col-md-6 col-lg-4  justify-content-center mt-sm-5">
                <%--<div class="col-sm-3 col-md-6" style="background-color: #E3E5E5;">--%>

                <div class="form-group row ">
                    <div class="col-lg-12 col-md-12 col-sm-12 pt-0 text-center" >
                        <asp:Label class="lb-md" ID="Label1" runat="server" Text="login in"></asp:Label>
                    </div>
                    
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <asp:TextBox ID="Email" runat="server"  placeholder="Enter Email" OnTextChanged="TextBox1_TextChanged" CssClass="form-control"></asp:TextBox>
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                </div>
                <div class="form-group row ">
                   
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <asp:TextBox ID="Password" runat="server"  placeholder="Enter passowrd" OnTextChanged="TextBox1_TextChanged" CssClass=" form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row mt-lg-12 mt-md-12 ">
                    <div class="col text-center">
                        <asp:Button ID="Button1" TextMode="Password" runat="server" Text="Login" class="btn btn-success"  OnClick="Button1_Click" Width="50%"  />
                    </div>
                </div>
                  <div class="row mt-lg-3 mt-md-3 border">
                    <div class="p-3">
                <b>Login Instuctions</b>
                    Key in your GymApp is email (example:igormori@gmail.com) and passowrd. The same credential you need to access access the website.
                </br><b>Forgot your password?</b>
                        Please send us an e-mail to reset your password <a href="Contact.aspx">Contact Us</a>
                    </div>
                 </div>
            

            </div>
         
        </div>
    </div>

</asp:Content>

