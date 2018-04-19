<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Exercises.aspx.cs" Inherits="gymApplication.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row mb-3 align-content-center">   
            <div class="col-sm-12 col-lg-12 text-center">
               <h2><asp:Label ID="name" runat="server" Text="Label"></asp:Label></h2>
                <div class="p-2 m-3">
                <h3>Legs</h3>
            </div>

          <h3><asp:Label ID="leg1" runat="server" Text="Label"></asp:Label></h3>
            <div class=" m-2 p-2">
                <asp:Label ID="leg1d" runat="server" Text="Label"></asp:Label></br>
            </div>
         <asp:Image ID="leg1p" runat="server" ImageUrl="pictures/legs/legPress.jpg" />
         
              <h3><asp:Label ID="leg2" runat="server" Text="Label"></asp:Label></h3>
            <div class=" m-2 p-2">
                <asp:Label ID="leg2d" runat="server" Text="Label"></asp:Label></br>
            </div>
         <asp:Image ID="leg2p" runat="server" ImageUrl="pictures/legs/stepUp.jpg" />
         

      
        <h3>Back</h3>
   
         <asp:Label ID="leg" runat="server" Text="Label"></asp:Label>
    

            </div>

            
                    
         
        <div class="row mb-3 align-contents-center">
            <button class="btn btn-success align-center" type="submit">LOG WORKOUT</button>
        </div>
        </div>


</asp:Content>
