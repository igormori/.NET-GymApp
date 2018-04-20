<%@ Page Title="" Language="C#" MasterPageFile="~/GraphMasterWebPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="gymApplication.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

    <div class="container-fuild mb-3" style="overflow-x: hidden;">
        
        <div class="row">
            <div class="col-lg-10 mx-auto">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 ">
                        <!--the card is going here-->
                        <div class="card-group border-primary">
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
                                <h1 class="display-5 text-center ">Select workouts</h1>
                            </div>
                        </div>
                        <div class="row justify-content-md-center mt-2">
                            <!--days-->

                            <div class="col-md-12 col-12">
                                <p class="text-center">

                                    <asp:Button CssClass="btn btn-outline-primary" ID="Button1" runat="server" Text="Sunday" />
                                    <asp:Button CssClass="btn btn-outline-primary" ID="Button2" runat="server" Text="Monday" />
                                    <asp:Button CssClass="btn btn-outline-primary" ID="Button3" runat="server" Text="Tuesday" />
                                    <asp:Button CssClass="btn btn-outline-primary" ID="Button4" runat="server" Text="Wednesday" BorderStyle="Ridge" />
                                    <asp:Button CssClass="btn btn-outline-primary" ID="Button5" runat="server" Text="Thursday" />
                                    <asp:Button CssClass="btn btn-outline-primary" ID="Button6" runat="server" Text="Friday" />
                                    <asp:Button CssClass="btn btn-outline-primary" ID="Button7" runat="server" Text="Saturday" />
                                </p>
                            </div>

                        </div>
                        <div class="row justify-content-center">

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [ExpectedReps], [ActualReps] FROM [UserWorkOuts_Table]"></asp:SqlDataSource>
                            <div class="col-sm-12 col-md-12">
                                <h1 class="display-5 text-center text-primary">Weekly review</h1>
                            </div>
                             <div class="row mt-2">
                                <div class="col-sm-12">
                                    <div class="row justify-content-md-center">

                                        <div style="color: white">
                                            <asp:Label ID="results" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <!--outter div for graph and checkboxes-->
                                <div class="row">
                                    <div class="col-4 text-center ">
                                        
                                            <h5>Confirm completion</h5>
       
                                        <div class=" form-group">
                                            <label class="text-warning font-weight-bold ">S</label>
                                            <asp:CheckBox ID="CheckBox1" CssClass="form-control-inline" runat="server" />
                                         </div>
                                       <div class=" form-group">
                                            <label class="text-primary font-weight-bold">M</label>
                                            <asp:CheckBox ID="CheckBox2" CssClass="form-control-inline" runat="server" />
                                        </div>
                                        <div class=" form-group">
                                            <label class="text-primary font-weight-bold ">T</label>
                                            <asp:CheckBox ID="CheckBox3" CssClass="form-control-inline" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="text-primary font-weight-bold ">W</label>
                                            <asp:CheckBox ID="CheckBox4" CssClass="form-control-inline" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="text-primary font-weight-bold">T</label>
                                            <asp:CheckBox ID="CheckBox5" CssClass="form-control-inline" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="text-primary font-weight-bold ">F</label>
                                            <asp:CheckBox ID="CheckBox6" CssClass="form-control-inline" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="text-warning font-weight-bold">S</label>
                                            <asp:CheckBox ID="CheckBox7" CssClass="form-control-inline" runat="server" />
                                        </div>
                                        <asp:Button ID="Button8" CssClass="btn btn-block btn-primary" runat="server" Text="Submit" OnClick="SubmitResults_Click" />

                                    </div>
                                    <div class="col-8">
                        <canvas id="myChart"  class="w-100" " height: auto"></canvas>
                 </div>
            </div>
                    
                    <%--<div class="col-sm-12">
                        <div class="row justify-content-md-center">
                            <div class="col-sm-1">
                                <h1 class="display-3">S</h1>
                            </div>
                            <div class="col-sm-1">
                                <h1 class="display-3">M</h1>
                            </div>
                            <div class="col-sm-1">
                                <h1 class="display-3">T</h1>
                            </div>
                            <div class="col-sm-1">
                                <h1 class="display-3">W</h1>
                            </div>
                            <div class="col-sm-1">
                                <h1 class="display-3">T</h1>
                            </div>
                            <div class="col-sm-1">
                                <h1 class="display-3">F</h1>
                            </div>
                            <div class="col-sm-1">
                                <h1 class="display-3">S</h1>
                            </div>
                        </div>
                    </div>--%>
                    
       <%--             <div class="col-sm-12">
                        <div class="row justify-content-md-center">
                             <div class="col-sm-1">
                                <h5>Confirm completion</h5>
                            </div>
                            <div class="col-sm-1">
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </div>
                            <div class="col-sm-1">
                                <asp:CheckBox ID="CheckBox2" runat="server" />
                            </div>
                            <div class="col-sm-1">
                                <asp:CheckBox ID="CheckBox3" runat="server" />
                            </div>
                            <div class="col-sm-1">
                                <asp:CheckBox ID="CheckBox4" runat="server" />
                            </div>
                            <div class="col-sm-1">
                                <asp:CheckBox ID="CheckBox5" runat="server" />
                            </div>
                            <div class="col-sm-1">
                                <asp:CheckBox ID="CheckBox6" runat="server" />
                            </div>
                            <div class="col-sm-1">
                                <asp:CheckBox ID="CheckBox7" runat="server" />
                            </div>
                        </div>
                    </div>
               
            </div>--%>
      <%--      <div class="col-sm-12">
                <div style="height: 50px;"></div>
                <canvas id="myChart" style="width: 312px; height: 130px"></canvas>
                <div style="height: 50px;"></div>
                <asp:Button ID="Button8" CssClass="btn btn-block btn-success" runat="server" Text="Submit" OnClick="SubmitResults_Click" />
            </div>--%>
            
        
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
