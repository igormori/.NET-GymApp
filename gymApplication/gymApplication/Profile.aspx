<%@ Page Title="Profile" Language="C#" MasterPageFile="~/GraphMasterWebPage.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="gymApplication.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">



    <!---------------------Body section Main content------------------------------->

    <div class="row rounded" style="padding: 50px">
        <div class="col-sm-5 col-md-6" id="profile">
            <asp:Image ID="Image1" runat="server" CssClass="img-fluid img-thumbnail fa-circle" width="250px" height="250px" />
       
            <h1><asp:Label CssClass="m-2" ID="name" runat="server" Text="Label"></asp:Label></h1>
            <asp:Label ID="bio" runat="server" Text="Label"></asp:Label></br>
            <asp:Button CssClass="btn btn-lg btn-danger m-2 " ID="Button3" runat="server" Text="Edit your Profile" Width="300px" PostBackUrl="~/EditPage.aspx"/></br>
            <asp:Button CssClass="btn btn-lg btn-primary m-2" ID="Button1" runat="server" Text="Set your Training" Width="200px" PostBackUrl="~/ExercisePage.aspx" />
            <asp:Button CssClass="btn btn-lg btn-primary m-2 " ID="Button2" runat="server" Text="Check your training" Width="200px" OnClick="Button2_Click" />
            
      
            <i class="fas fa-chart-line"></i>
        </div>
        <div class="col-sm-5 offset-sm-2 col-md-6 offset-md-0">
            <div class="box1">Today`s note:</br> It is always seems impossible until it`s done.</div>
             <a href="ExercisePage.aspx">
            <div class="box2">
               <h1><b><asp:Label ID="exercise" runat="server" Text=""></asp:Label></b></h1>

            </div>

             </a>
        </div>
    </div>
</asp:Content>
