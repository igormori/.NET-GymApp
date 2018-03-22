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
                        <h5 class="card-title display-4">Create</h5>
                        <p class="card-text">Your fitness journey with GymHub and change the way you workout forever.</p>
                    </div>
                </div>
                <div class="card" style="border-color: #C4DDE0; border-width: 5px; height: 400px;">
                    <div class="card-body">
                        <h5 class="card-title display-4">Continue</h5>
                        <p class="card-text ">Tracking your workout with our simple and easy user friendly interface while staying focused on your routine.</p>
                    </div>
                </div>
                <div class="card" style="border-color: #C4DDE0; border-width: 5px; height: 400px;">
                    <div class="card-body">
                        <h5 class="card-title display-4">Complete</h5>
                        <p class="card-text">Your week, measure you results and maybe even treat yourself?</p>
                    </div>
                </div>
            </div>
        </div>
        <div style="height: 30px;"></div>
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-6">
                <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100 img-fluid" src="pictures/landing1.png" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100 img-fluid" src="pictures/landing2.png" alt="Second slide">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-6">
                <div style="height: 20px;"></div>
                <h1 class="display-3">project description</h1>
                <div style="height: 20px;"></div>
                <p class="border lead">
                    Ever started a workout routine and completey forgot about it half-way through the week?
                    This app was created to help users keep track of thier progress in the gym by
                    providing them with a list of workouts. At the end of each  week users can
                    view thier weekly and montly progress. Users can chooes from a wide varitey of pre configured workouts to get started right away.
                </p>
                <div style="height: 20px;"></div>
            </div>
        </div>
    </div>
</asp:Content>
