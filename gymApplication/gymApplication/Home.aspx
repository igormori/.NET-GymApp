<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="gymApplication.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div style="height:35px;"></div>
                <!--the card is going here-->
                <div class="card-group">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="..." alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title display-4">Your Name</h5>
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
                            <a href="#" class="card-link">Profile</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-6">
                <!-- place holders for the welcome, flex box and graph go here-->
                <div class="row justify-content-center">
                    <!--welcome-->
                    <div class="col">
                        <h1 class=" display-2">Workouts</h1>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <!--flex-->
                    <div class="col">
                        <div class="d-flex align-content-around flex-wrap">
                            <div class="order-1 p-2 border">
                                Monday
                            </div>
                            <div class="order-2 p-2 border">Tuesday</div>
                            <div class="order-3 p-2 border">Wednesday</div>
                            <div class="order-4 p-2 border">Thursday</div>
                            <div class="order-5 p-2 border">Friday</div>
                            <div class="order-6 p-2 border">Saturday</div>
                            <div class="order-7 p-2 border">Sunday</div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <!--graph-->
                    <div class="col">
                        <canvas id="myChart" width="400" height="200"></canvas>
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
    </div>

</asp:Content>
