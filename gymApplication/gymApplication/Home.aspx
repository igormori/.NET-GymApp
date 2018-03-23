<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="gymApplication.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fuild" style="overflow-x: hidden;">
        <div style="height: 30px;"></div>
        <div class="row justify-content-center">
            <div class="col-10">
                <div class="row justify-content-center">
            <div class="col-xs-12 col-sm-8 col-md-4 col-lg-3 ">
                <!--the card is going here-->
                <div class="card-group">
                    <div class="card">
                        <!--img here-->
                        <asp:Image ID="profileImage" runat="server" CssClass="img-fluid" src="pictures/profile.jpg" />
                       
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
                            <a href="#" class="card-link">Profile</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-8 col-lg-7 ml-lg-5">
                <!-- place holders for the welcome, days of week and graph go here-->
                <div class="row">
                    <div class="col-sm-12 col-md-12 pt-1">
                        <h1 class="h1 text-center">Timeline</h1>

                        </div>
                </div>
                <%-- timeline area --%>
                <div class="row justify-content-md-center mt-2">
                <div class="form-group col-lg-8 col-md-8">
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="4" placeholder="What's up for today?"></textarea>
    <button type="submit" class="btn btn-success float-right mt-3">Update</button>
                </div>    
                </div>
        <div class="row justify-content-center">
                    <!--welcome-->
                    <div class="col-sm-12 col-md-12 pt-3">
                        <h1 class="h1 text-center">Workouts</h1>
                    </div>
                </div>
                <div class="row justify-content-md-center mt-3">
                    <!--days-->


                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="row">
                            <div class="col-lg col-md-2 col-sm-2">MONDAY</div>
                            <div class="col-lg col-md-2 col-sm-2">TUESDAY</div>
                            <div class="col-lg col-md-2 col-sm-2">WEDNESDAY</div>
                            <div class="col-lg col-md-2 col-sm-2">THURSDAY</div>
                            <div class="col-lg col-md col-sm">FRIDAY</div>
                            <div class="col-lg col-md col-sm">SATURDAY</div>
                            <div class="col-lg col-md col-sm">SUNDAY</div>
                        </div>
                    </div>

                    <%--<div class="row col-md-12 ">
                        <p class="text-center text-primary">
                            Sunday
                   Monday
                    Tuesday
                    Wedensday
                   Thursday
                    Friday
                    Saturday
                        </p>
                    </div>--%>

                </div>
                <div class="row justify-content-center mt-3">
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
            </div>
    </div>
</asp:Content>
