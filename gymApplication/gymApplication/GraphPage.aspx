<%@ Page Title="" Language="C#" MasterPageFile="~/GraphMasterWebPage.Master" AutoEventWireup="true" CodeBehind="GraphPage.aspx.cs" Inherits="gymApplication.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="row justify-content-md-center">
                            <h1 class="display-4">Weekly Progress</h1>
                            <div style ="color:white">
                            <asp:Label ID="results" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div style="height: 50px;"></div>
                    <div class="col-sm-12">
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
                    </div>
                    <div style="height: 50px;"></div>
                    <div class="col-sm-12">
                        <div class="row justify-content-md-center">
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
                </div>
            </div>
            <div class="col-sm-12">
                <div style="height: 50px;"></div>
                <canvas id="myChart" style="width: 312px; height: 130px"></canvas>
                <div style="height: 50px;"></div>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="SubmitResults_Click" />
            </div>
        </div>
    </div>
</asp:Content>

