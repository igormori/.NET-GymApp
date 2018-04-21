<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="gymApplication.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fuild" style="overflow-x: hidden;">
        <div class="row justify-content-md-center">
            <div class="col-12 text-center " style="height: 450px;background:url('pictures/landinghome.jpg') no-repeat; color:white">
                           
            </div>
        </div>
        <div class="row justify-content-md-center" style="position: relative;">
            <div class="card-deck">
                <div class="card" style="border-color: #C4DDE0; border-width: 5px; height: 350px;">
                    <div class="card-body">
                        <h5 class="card-title display-4">Create</h5>
                        <p class="card-text">Your fitness journey with GymHub and change the way you workout forever.</p>
                        <div style="height: 5px;"></div>
                        <div class="row mt-3">
                        <a href="Signup.aspx" class="btn-primary col-12 p-3 text-center">Sign Up</a>
                    </div>
                        </div>
                </div>
                <div class="card" style="border-color: #C4DDE0; border-width: 5px; height: 350px;">
                    <div class="card-body">
                        <h5 class="card-title display-4">Continue</h5>
                        <p class="card-text ">Tracking your workout with our simple and easy user friendly interface while staying focused on your routine.</p>
                       <div class="row mt-3">
                        <a href="login.aspx" class="btn-primary col-12 p-3 text-center">Log In</a>
                           </div>
                    </div>
                </div>
                <div class="card" style="border-color: #C4DDE0; border-width: 5px; height: 350px;">
                    <div class="card-body">
                        <h5 class="card-title display-4">Complete</h5>
                        <p class="card-text">Your week, measure you results and maybe even treat yourself?</p>
                        <div class="row mt-4 pt-2">
                        <a href="Home.aspx" class="btn btn-primary col-12 p-3 text-center">Home</a>
                            </div>
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
                <div class="card" style="border-color: #C4DDE0; border-width: 5px; height: 400px;">
                    <div class="card-body">
                        <h5 class="card-title display-4">Questions?</h5>
                        <p class="card-text  display-4">Feel free to connect with us at anytime</p>
                        <div class="row mt-2">
                        <a href="Contact.aspx" class="btn btn-primary col-12 mt-3">Contact</a>
                    </div>
                        </div>
                </div>
                <div style="height: 20px;"></div>
            </div>
        </div>
    </div>
</asp:Content>
