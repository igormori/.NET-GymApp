<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="gymApplication.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">

        <div class="row justify-content-center">
            <h1 class="display-3">Contact us</h1>

        </div>
        <div class="row justify-content-center">

            <div class="col-sm-6">
                <div class="form-group">
                    <label for="formGroupExampleInput">Frist</label>
                    <input type="text" class="form-control" id="FName" placeholder="Frist Name">
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="formGroupExampleInput">Last</label>
                    <input type="text" class="form-control" id="LName" placeholder="Last Name">
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="formGroupExampleInput">Phone</label>
                    <input type="text" class="form-control" id="Phone" placeholder="Phone">
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="formGroupExampleInput">Email</label>
                    <input type="text" class="form-control" id="Email" placeholder="Email">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Example textarea</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" cols="20"></textarea>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
