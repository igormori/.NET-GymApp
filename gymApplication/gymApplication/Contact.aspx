<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="gymApplication.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        
        
        
        
        </div>
        <div style="height: 80px;"></div>
        <div class="row justify-content-center">
            <a href="Contact.aspx">Contact.aspx</a>
            <h1 class="display-3">Contact us</h1>
            <div style="height: 100px;"></div>
        </div>
        <div class="row justify-content-center">
            <div class="col-sm-3">
                <div class="form-group">
                    
                    <label for="formGroupExampleInput"></label>
                    
                    <asp:TextBox ID="FName" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
                    <div class="row justify-content-center" style="color: #FF0000"> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FName" ErrorMessage="First Name Required"></asp:RequiredFieldValidator>
            </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="formGroupExampleInput"></label>
                    <asp:TextBox class="form-control" ID="LName" runat="server" placeholder="Last Name"></asp:TextBox>
                    <div class="row justify-content-center" style="color: #FF0000">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LName" ErrorMessage="Last Name Required"></asp:RequiredFieldValidator>
            </div>
                </div>
                
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="formGroupExampleInput"></label>
                    
                    <asp:TextBox ID="Phone" runat="server" class="form-control" placeholder="Phone Number"></asp:TextBox>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="formGroupExampleInput"></label>
                    
                    <asp:TextBox ID="Email" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                    <div class="row justify-content-center" style="color: #FF0000">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Email" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
            </div>
                </div>
            </div>
        </div>
        
            
        <div class="row justify-content-center">
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="exampleFormControlTextarea1"></label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" cols="20" placeholder="Message"></textarea>
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
                    <button type="submit" class="btn btn-primary">Submit</button>   
            </div>
        </div>
    

</asp:Content>
