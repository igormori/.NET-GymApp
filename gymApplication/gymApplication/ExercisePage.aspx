<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ExercisePage.aspx.cs" Inherits="gymApplication.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col row">
                <div class="col-10 mx-auto p-3 bg-dark mt-2 ">
                    <asp:ImageButton ID="ImageButton1" CssClass="img-thumbnail" runat="server" ImageUrl="~/pictures/gym.jpg" />
                </div>
                 <div class="col-10 mx-auto p-3 bg-secondary mt-2">
                    <asp:ImageButton ID="ImageButton2" CssClass="img-thumbnail" runat="server" ImageUrl="~/pictures/girl_boxer.jpeg" />
                </div>
                 <div class="col-10 mx-auto p-3 bg-success mt-2">
                    <asp:ImageButton ID="ImageButton3" runat="server" />
                </div>
                 <div class="col-10 mx-auto p-3  bg-warning mt-2">
                   <asp:ImageButton ID="ImageButton4" runat="server" />
                </div>
            </div>
            <div class="col">

            </div>
        </div>
    </div>

</asp:Content>
