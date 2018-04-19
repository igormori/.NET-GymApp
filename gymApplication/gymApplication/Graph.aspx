<%@ Page Title="" Language="C#" MasterPageFile="~/GraphMasterWebPage.Master" AutoEventWireup="true" CodeBehind="Graph.aspx.cs" Inherits="gymApplication.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>Hello World!</h1>
        <div class="row">
            <div class="col-sm-12" style="background-color: yellow;">
                <div class="row">
                    <div class="col-sm-12" style="background-color: green;">
                        <div class="row justify-content-md-center">
                            <h1 class="display-4">Weekly Progress</h1>
                        </div>
                    </div>
                    <div class="col-sm-12" style="background-color: blue;">
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
                    <div class="col-sm-12" style="background-color: lightblue;">
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
            <div class="col-sm-12" style="background-color: pink;">
                <p>Sed ut perspiciatis...</p>
            </div>
        </div>
    </div>
</asp:Content>
