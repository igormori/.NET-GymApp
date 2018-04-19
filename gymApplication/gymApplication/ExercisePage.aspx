<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ExercisePage.aspx.cs" Inherits="gymApplication.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mx-auto">
        <div class="row mt-3 col-10">   
            <div class="col">
               <h2> Select your pre-defined workout for your week training</h2>
            </div>

        </div>
        <div class="row text-center mt-2">

            <div class="col-12 ">
                <div class="tab-content ">
                    <div class="jumbotron" style="background: url(../pictures/gym.jpg) no-repeat center center;color:white">
                      <h1 class="display-20">Beginer 1</h1>
                      <p class="lead">This is a training for beginer in the gym world!</p>
                      <hr class="my-2">
                      <p>This Training will make your body ready to have a fitness life. We are going to train you basic workout exercises, then lets get ready! Click in the buttom for more information </p>
                      <p class="lead">
                        <a class="btn btn-primary btn-lg" href="Exercises.aspx?selected=begining" role="button">Description</a>
                      </p>
                    </div>
                </div>
            </div>

            <div class="col-12 ">
                <div class="tab-content ">
                    <div class="jumbotron" style="background: url(../pictures/home.jpg) no-repeat center center;color:white">
                      <h1 class="display-20">Intermediate 1</h1>
                      <p class="lead">This is a Intermediate Training for people who needs a little challenge!</p>
                      <hr class="my-2">
                      <p>This Training will make your body ready to have a fitness life. We are going to train you basic workout exercises, then lets get ready! Click in the buttom for more information </p>
                      <p class="lead">
                        <a class="btn btn-primary btn-lg" href="Exercises.aspx?selected=intermediate" role="button">Description</a>
                      </p>
                    </div>
                </div>
            </div>
            <div class="col-12 ">
                <div class="tab-content ">
                    <div class="jumbotron" style="background: url(../pictures/girl_boxer.jpeg) no-repeat center center;color:white">
                      <h1 class="display-20">Advanced 1</h1>
                      <p class="lead">This is a training for beginer in the gym world!</p>
                      <hr class="my-2">
                      <p>This Training will make your body ready to have a fitness life. We are going to train you basic workout exercises, then lets get ready! Click in the buttom for more information </p>
                      <p class="lead">
                        <a class="btn btn-primary btn-lg" href="Exercises.aspx?selected=advanced" role="button">Description</a>
                      </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mb-3 align-contents-center">
            <button class="btn btn-success align-center" type="submit">LOG WORKOUT</button>
        </div>
        </div>
</asp:Content>
