<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="gymApplication.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fuild" style="overflow-x: hidden;">
        <div class="row justify-content-md-center">
            <div class="col-12 " style="height: 350px">
                <img src="pictures/landinghome.jpg" class="img-fluid" alt="Responsive image" style="height: 550px; width: 3000px;">
            </div>
        </div>
        <div class="row justify-content-md-center" style="position: relative;">
            <div class="card-deck">
                <div class="card" style="border-color: #C4DDE0; border-width: 5px; height: 400px;">
                    <div class="card-body">
                        <h5 class="card-title display-2">Create</h5>
                        <p class="card-text">Your fitness journey with GymHub and change the way you workout forever, no longer will you lose track of any of your progress or the goals you have set for yourself.</p>
                    </div>
                </div>
                <div class="card" style="border-color: #C4DDE0; border-width: 5px; height: 400px;">
                    <div class="card-body">
                        <h5 class="card-title display-2">Continue</h5>
                        <p class="card-text ">Tracking your workout with our simple and easy user friendly interface while staying focused on your routine.</p>
                    </div>
                </div>
                <div class="card" style="border-color: #C4DDE0; border-width: 5px; height: 400px;">
                    <div class="card-body">
                        <h5 class="card-title display-2">Complete</h5>
                        <p class="card-text">Your week, measure you results and maybe even treat yourself?</p>
                    </div>
                </div>
            </div>
        </div>
        <div style="height: 30px;"></div>
        <div class="row">
            <div class="col-sm-3 col-md-6 col-lg-6">
                <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="..." alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="..." alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="..." alt="Third slide">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-md-6 col-lg-6">
                <h1 class="display-1">project description</h1>
            </div>
        </div>
    </div>
</asp:Content>
