<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="gymApplication.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fuild" style="overflow-x: hidden;">
        <div style="height: 30px;"></div>
        <div class="row">
            <div class="col-lg-10 mx-auto">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 ">
                        <!--the card is going here-->
                        <div class="card-group">
                            <div class="card">
                                <img src="pictures/profile.jpg" class="img-fluid" />
                                <div class="card-body">
                                    <h5 class="card-title display-4">Igor</h5>
                                    <p class="card-text">
                                        This is your personal homepage please feel free to use the graphs and calendar provided to track your
                                progress!
                                    </p>
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">Your Age</li>
                                    <li class="list-group-item">Your date of birth</li>
                                    <li class="list-group-item">Your Gym name and Location</li>
                                </ul>
                                <div class="card-body">
                                    <a href="profile.aspx" class="card-link">Profile</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-8 col-lg-8 ml-lg-5">
                        <!-- place holders for the welcome, days of week and graph go here-->
                        <div class="row justify-content-center">
                            <!--welcome-->
                            <div class="col-sm-12 col-md-12 col-lg-8 p-2">
                                <h1 class="display-5 text-center text-primary font-weight-bold">TimeLine</h1>
                                <textarea class="form-control border-primary text-muted" rows="5" placeholder="What's your plan for today ?"></textarea>
                                <button type="submit" class="btn btn-success float-right mt-4">Update</button>
                            </div>
                        </div>
                        <div class="row justify-content-center mt-1">
                            <!--welcome-->
                            <div class="col-sm-12 col-md-12">
                                <h1 class="display-5 text-center text-primary">Workouts</h1>
                            </div>
                        </div>
                        <div class="row justify-content-md-center mt-2">
                            <!--days-->

                            <div class="col-md-12 col-12">
                                <p class="text-center">

                                    <asp:Button CssClass="btn btn-outline-primary" ID="Button1" runat="server" Text="Sunday" />
                                    <asp:Button CssClass="btn btn-outline-primary" ID="Button2" runat="server" Text="Monday" />
                                    <asp:Button CssClass="btn btn-outline-primary" ID="Button3" runat="server" Text="Tuesday" />
                                    <asp:Button CssClass="btn btn-outline-primary" ID="Button4" runat="server" Text="Wednesday" />
                                    <asp:Button CssClass="btn btn-outline-primary" ID="Button5" runat="server" Text="Thursday" />
                                    <asp:Button CssClass="btn btn-outline-primary" ID="Button6" runat="server" Text="Friday" />
                                    <asp:Button CssClass="btn btn-outline-primary" ID="Button7" runat="server" Text="Saturday" />

                                </p>
                            </div>

                        </div>
                        <div class="row justify-content-center">

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [ExpectedReps], [ActualReps] FROM [UserWorkOuts_Table]"></asp:SqlDataSource>

                            <!--graph-->
                  
                            <div class="col-md-10">
                                <canvas class="border-success" id="myChart" width="400" height="200"></canvas>
                                <script>
                                    var ctx = document.getElementById("myChart").getContext('2d');
                                    var myChart = new Chart(ctx, {
                                        type: 'bar',
                                        data: {
                                            labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday",],
                                            datasets: [{
                                                label: '# Completed Workouts',

                                                data: [5, 4, 3, 5, 2, 3, 8],

                                                backgroundColor: [
                                                    'rgba(255, 99, 132, 0.2)',
                                                    'rgba(54, 162, 235, 0.2)',
                                                    'rgba(255, 206, 86, 0.2)',
                                                    'rgba(75, 192, 192, 0.2)',
                                                    'rgba(153, 102, 255, 0.2)',
                                                    'rgba(255, 159, 64, 0.2)',
                                                    'rgba(255, 99, 132, 0.2)'
                                                ],

                                                borderColor: [
                                                    'rgba(255,99,132,1)',
                                                    'rgba(54, 162, 235, 1)',
                                                    'rgba(255, 206, 86, 1)',
                                                    'rgba(75, 192, 192, 1)',
                                                    'rgba(153, 102, 255, 1)',
                                                    'rgba(153, 102, 255, 1)',
                                                    'rgba(255, 159, 64, 1)'
                                                ],

                                                borderWidth: 1
                                            }, {
                                                    label: '# Completed Workouts',

                                                    data: [5, 4, 3, 5, 2, 3, 8],

                                                    backgroundColor: [
                                                        'rgba(255, 99, 132, 0.2)',
                                                        'rgba(54, 162, 235, 0.2)',
                                                        'rgba(255, 206, 86, 0.2)',
                                                        'rgba(75, 192, 192, 0.2)',
                                                        'rgba(153, 102, 255, 0.2)',
                                                        'rgba(255, 159, 64, 0.2)',
                                                        'rgba(255, 99, 132, 0.2)'
                                                    ],

                                                    borderColor: [
                                                        'rgba(255,99,132,1)',
                                                        'rgba(54, 162, 235, 1)',
                                                        'rgba(255, 206, 86, 1)',
                                                        'rgba(75, 192, 192, 1)',
                                                        'rgba(153, 102, 255, 1)',
                                                        'rgba(153, 102, 255, 1)',
                                                        'rgba(255, 159, 64, 1)'
                                                    ],

                                                    borderWidth: 1
                                            }


                                            ]
                                        },
                                        options: {
                                            scales: {
                                                yAxes: [{
                                                    ticks: {
                                                        beginAtZero: true
                                                    }
                                                }]
                                            }
                                        }
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
