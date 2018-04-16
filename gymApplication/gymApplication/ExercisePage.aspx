<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ExercisePage.aspx.cs" Inherits="gymApplication.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mx-auto">
        <div class="row mt-3 col-10">
            <div class="col">
                <ul class="nav nav-tabs  p-2">
                    <li class="active"><a data-toggle="tab" class="nav-link" href="#ABS">ABS</a></li>
                    <li><a data-toggle="tab" class="nav-link" href="#LEGS">LEGS</a></li>
                    <li><a data-toggle="tab" class="nav-link" href="#BICEPS">BICEPS</a></li>
                    <li><a data-toggle="tab" class="nav-link" href="#SHOULDERS">SHOULDERS</a></li>
                    <li><a data-toggle="tab" class="nav-link" href="#BACK">BACK</a></li>
                </ul>
            </div>

        </div>
        <div class="row text-center mt-2">

            <div class="col-10 ">
                <div class="tab-content ">

                    <div id="ABS" class="tab-pane  active">
                        <div class="row">
                            <div class="col">
                                <h3>ABS</h3>
                                <img src="pictures/Abs/crunch3.gif" />
                            </div>
                            <div class="col">
                                <h3>links for selecting workouts</h3>
                            </div>

                        </div>

                    </div>
                    <div id="LEGS" class="tab-pane fade">
                        <div class="row">
                            <div class="col">
                                <h3>LEGS</h3>
                                <img src="pictures/Abs/crunch2.gif" />
                            </div>
                            <div class="col">
                                <h3>links for selecting workouts</h3>
                            </div>

                        </div>

                    </div>
                    <div id="BICEPS" class="tab-pane fade">
                        <div class="row">
                            <div class="col">
                                <h3>BICEPS</h3>
                                <p>picture</p>
                            </div>
                            <div class="col">
                                <h3>links for selecting workouts</h3>
                            </div>

                        </div>

                    </div>
                    <div id="SHOULDERS" class="tab-pane fade">
                        <div class="row">
                            <div class="col">
                                <h3>SHOULDERS</h3>
                                <p>picture</p>
                            </div>
                            <div class="col">
                                <h3>links for selecting workouts</h3>
                            </div>

                        </div>

                    </div>
                    <div id="BACK" class="tab-pane fade in active">
                        <div class="row">
                            <div class="col">
                                <h3>BACK</h3>
                                <p>picture</p>
                            </div>
                            <div class="col">
                                <h3>links for selecting workouts</h3>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mb-3 align-contents-center">
            <button class="btn btn-success align-center" type="submit">LOG WORKOUT</button>
        </div>
        </div>
</asp:Content>
