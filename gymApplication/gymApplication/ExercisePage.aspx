<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ExercisePage.aspx.cs" Inherits="gymApplication.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid ">
        <div class="row m-3">
            <div class="col row text-center border-danger ">
                <div class="col-10 mx-auto p-3 mt-2 ">

                    <div class="card border-0">
                        <div class="card-img-top float-left">
                        <asp:ImageButton ID="ImageButton1" class="gifs"  CssClass="gifs rounded " runat="server" ImageUrl="~/pictures/Abs/crunch1.gif" /> 
                        </div>
                        <div class="card-text h3 ">ABS</div>
                    </div>
                     
                    
                </div>
                 <div class="col-10 mx-auto p-3 mt-2">

                   <div class="card border-0">
                        <div class="card-img-top">
                        <asp:ImageButton ID="ImageButton2" class="gifs" CssClass="gifs rounded " runat="server" ImageUrl="~/pictures/Abs/chest1.gif" />
                        </div>
                        <div class="card-text h3 ">CHEST</div>
                    </div>
                </div>
                 <div class="col-10 mx-auto p-3 mt-2">
                   <div class="card border-0">
                        <div class="card-img-top">
                        <asp:ImageButton ID="ImageButton3" class="gifs" CssClass="gifs rounded " runat="server" ImageUrl="~/pictures/Abs/back2.gif" />
                        </div>
                        <div class="card-text h3 ">BACK</div>
                    </div>
                </div>
                 <div class="col-10 mx-auto p-3  mt-2">
                    <div class="card border-0">
                        <div class="card-img-top">
                        <asp:ImageButton ID="ImageButton4" class="gifs" CssClass="gifs rounded " runat="server" ImageUrl="~/pictures/Abs/chest1.gif" />
                        </div>
                        <div class="card-text h3 ">CHEST</div>
                    </div>
                </div>
            </div>
            <div class="col-6 bg-dark">

            </div>
        </div>
    </div>

</asp:Content>
