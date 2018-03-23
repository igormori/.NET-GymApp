<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="gymApplication.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
       <%-- Whoa!!! everthing is done --%>
        <div class="row mt-5">
            <div class="col-sm-12 col-md-6 col-lg-8">
                <div class="row ">
                    <div class="col-12">
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active ">
                                    <img class="animated slideInUp d-block w-100" src="pictures/sprint.jpeg" alt="First slide">
                                </div>
                                <div class="carousel-item ">
                                    <img class="animated rollIn d-block w-100" src="pictures/girl_boxer.jpeg" alt="Second slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h4>Here is to the </h4>
                                        <p>champion in you</p>
                                        <p>Here is to the first step</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="animated rollIn  d-block w-100" src="pictures/track.jpg" alt="Third slide">
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                                
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 mt-sm-5">
                <div class="row mb-5">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <h1>
                            <asp:Label ID="txt_titlesignup" runat="server" Text="Sign up" ForeColor="#333333"></asp:Label></h1>
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <!-- <input type="email" class="form-control" id="Username" aria-describedby="emailHelp" placeholder="Enter Username">-->
                        <asp:TextBox ID="Username" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Enter Username"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ControlToValidate="Username" ErrorMessage="Field cannot be blank" Style="color: #FF0000"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Username" ErrorMessage="USer Name Must start with a letter" Style="color: #FF0000" ValidationExpression="^[A-Za-z][\w]{0,}" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <!-- <input type="email" class="form-control" id="Email" aria-describedby="emailHelp" placeholder="Enter email">-->
                        <asp:TextBox ID="Email" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Enter email"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Enter a valid email address" Style="color: #FF0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>

                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" ErrorMessage="Field cannot be blank" Style="color: #FF0000"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-12 col-md-12 col-sm-12 ">
                        <!--<input type="email" class="form-control" ID="EmailConfirm" aria-describedby="emailHelp" placeholder="Confirm email">-->
                        <asp:TextBox ID="EmailConfirm" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Confirm email"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ControlToValidate="EmailConfirm" ErrorMessage="Field cannot be blank" Style="color: #FF0000"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="EmailConfirm" runat="server" ErrorMessage="Email Address not matched" Style="color: #FF0000" ControlToCompare="Email" Display="Dynamic"></asp:CompareValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <!--<input type="password" class="form-control" id="Password" placeholder="Password">-->

                        <%--                    <i class="input-group-addonhttp://localhost:49943/Signup.aspx fa fa-key"></i>--%>
                        <asp:TextBox ID="Password" runat="server" class="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ControlToValidate="Password" ErrorMessage="Field cannot be blank" Style="color: #FF0000"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Pass has to start with a letter and contain a digit, and '!' or '*' and 8 to 16 char long" Style="color: #FF0000" ValidationExpression="^[A-Za-z](?=.*[!*])(?=.*[\d]).{7,16}" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <!-- <input type="password" class="form-control" id="confirmPassword" placeholder="Confrim Password">-->
                        <asp:TextBox ID="confirmPassword" TextMode="Password" runat="server" class="form-control" placeholder="Confirm Password"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ControlToValidate="confirmPassword" ErrorMessage="Field cannot be blank" Style="color: #FF0000"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" ControlToValidate="confirmPassword" runat="server" ErrorMessage="Password not matched" Style="color: #FF0000" ControlToCompare="Password" Display="Dynamic"></asp:CompareValidator>

                    </div>
                </div>
                <div class="row mb-5">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" Width="50%" />

                    </div>
                </div>



            </div>
        </div>
    </div>

</asp:Content>
