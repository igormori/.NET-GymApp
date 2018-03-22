<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="gymApplication.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container bg-transparent" style="overflow-x: hidden;">
        <div class="row mt-4">
            <div class="col-sm-12 col-md-5 col-lg-3">
                <div class="card-group border-primary">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top rounded" src="pictures/profile.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h4 class="card-title">Sherweezy</h4>
                            <p class="card-text">
                                Do you even lift broe ? #GymBro#gymTings
                            </p>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Age: 21</li>
                            <li class="list-group-item">Target Area: Abdomen</li>
                            <li class="list-group-item">Gym name and Location: Fit 4 Less, Brampton</li>
                        </ul>
                        <div class="card-body">
                            <a href="profile.aspx" class="card-link">Profile</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class=" offset-4 col-lg-8 col-md-8 col-sm-12 ">
                <div style="height: 20px;"></div>
                <div class="row mb-5">
                    <div class="col-lg-12 col-sm-10">
                        <h1 class="text-center display-5">Welcome</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12  mb-5">
                        <div class="d-flex align-content-around">

                            <div class="order-2 p-2 border border-primary">Monday</div>
                            <div class="order-3 p-2 border border-primary">Tuesday</div>
                            <div class="order-4 p-2 border border-primary">Wednesday</div>
                            <div class="order-5 p-2 border border-primary">Thursday</div>
                            <div class="order-6 p-2 border border-primary">Friday</div>
                            <div class="order-7 p-2 border border-primary">Saturday</div>
                            <div class="order-8 p-2 border border-primary">Sunday</div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center mb-5">
                    <div class="col-md-6 col-sm-12 col-lg-12 text-center">
                        <h1 class="display-5">Weekly Progress</h1>
                    </div>
                </div>
                <div class="row mb-5 justify-content-center">
                    
                    <canvas id="myChart" width="600" height="400"></canvas>
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
                                }]
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
</asp:Content>
