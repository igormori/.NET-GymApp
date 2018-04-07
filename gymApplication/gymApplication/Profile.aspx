<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="gymApplication.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">



    <!---------------------Body section Main content------------------------------->

    <div class="row rounded" style="padding: 50px">
        <div class="col-sm-5 col-md-6" id="profile">
            <asp:Image ID="Image1" runat="server" src="pictures/profile.jpg" CssClass="img-fluid img-thumbnail fa-circle" width="250px" height="250px" />
       
            <h1><asp:Label ID="name" runat="server" Text="Label"></asp:Label></h1>
            <h2><asp:Label ID="level" runat="server" Text="Label"></asp:Label></h2>
      
            <i class="fas fa-chart-line"></i>
        </div>
        <div class="col-sm-5 offset-sm-2 col-md-6 offset-md-0">
            <div class="box1">Today`s note:</br> It is always seems impossible until it`s done.</div>
            <div class="box2"><b>Beginner Training Number 2</div>
        </div>
    </div>
</asp:Content>
