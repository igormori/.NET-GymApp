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
                                <h2>Add your workouts bellow:</h2>
                                <table class="w-100">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:DropDownList ID="AbsList1" runat="server"></asp:DropDownList>
                                            </tr>
                                    <tr>
                                        <td>
                                
                                             <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                                             </td>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:DropDownList ID="AbsList2" runat="server"></asp:DropDownList>
                                    </tr>
                                    <tr>
                                        <td>
                                
                                               <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

                                       
                                             </td>
                                        <td>
                                       
                                             <asp:Label ID="Label8" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:DropDownList ID="AbsList1" runat="server"></asp:DropDownList>
                                    </tr>
                                    <tr>
                                        <td>
                                
                                               <asp:Label ID="Label5" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

                                       
                                             </td>
                                        <td>
                                       
                                              <asp:Label ID="Label9" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                           <asp:DropDownList ID="AbsList3" runat="server"></asp:DropDownList>
                                    </tr>
                                    <tr>
                                        <td>
                                
                                            <asp:Label ID="Label6" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                                       
                                             </td>
                                        <td>
                                       
                                              <asp:Label ID="Label10" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:DropDownList ID="AbsList4" runat="server"></asp:DropDownList>

                                        </td>
                                    </tr>
                                </table>
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
                                    <h2>Add your workouts bellow:</h2>
                                <table class="w-100">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label11" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label12" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink11" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink12" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>
                                            </tr>
                                    <tr>
                                        <td>
                                
                                             <asp:Label ID="Label13" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

                                       
                                             </td>
                                        <td>
                                       
                                               <asp:Label ID="Label14" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink13" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink14" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>
                                    </tr>
                                    <tr>
                                        <td>
                                
                                               <asp:Label ID="Label15" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

                                       
                                             </td>
                                        <td>
                                       
                                            <asp:Label ID="Label16" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink15" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink16" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>
                                    </tr>
                                    <tr>
                                        <td>
                                
                                               <asp:Label ID="Label17" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

                                       
                                             </td>
                                        <td>
                                       
                                            <asp:Label ID="Label18" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink17" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink18" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>
                                    </tr>
                                    <tr>
                                        <td>
                                
                                            <asp:Label ID="Label19" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                                       
                                             </td>
                                        <td>
                                       
                                            <asp:Label ID="Label20" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink19" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink20" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>

                                        </td>
                                    </tr>
                                </table>
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
                                    <h2>Add your workouts bellow:</h2>
                                <table class="w-100">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label21" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label22" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink21" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink22" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>
                                            </tr>
                                    <tr>
                                        <td>
                                
                                             <asp:Label ID="Label23" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

                                       
                                             </td>
                                        <td>
                                       
                                              <asp:Label ID="Label24" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink23" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink24" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>
                                    </tr>
                                    <tr>
                                        <td>
                                
                                               <asp:Label ID="Label25" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

                                       
                                             </td>
                                        <td>
                                       
                                              <asp:Label ID="Label26" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink25" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink26" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>
                                    </tr>
                                    <tr>
                                        <td>
                                
                                               <asp:Label ID="Label27" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

                                       
                                             </td>
                                        <td>
                                            <asp:Label ID="Label28" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink27" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink28" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>
                                    </tr>
                                    <tr>
                                        <td>
                                
                                            <asp:Label ID="Label29" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                                       
                                             </td>
                                        <td>
                                            <asp:Label ID="Label30" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink29" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink30" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>

                                        </td>
                                    </tr>
                                </table>
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
                                    <h2>Add your workouts bellow:</h2>
                                <table class="w-100">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label31" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label32" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink31" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink32" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>
                                            </tr>
                                    <tr>
                                        <td>
                                
                                             <asp:Label ID="Label33" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

                                       
                                             </td>
                                        <td>
                                            <asp:Label ID="Label34" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink33" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink34" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>
                                    </tr>
                                    <tr>
                                        <td>
                                
                                               <asp:Label ID="Label35" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

                                       
                                             </td>
                                        <td>
                                            <asp:Label ID="Label36" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink35" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink36" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>
                                    </tr>
                                    <tr>
                                        <td>
                                
                                               <asp:Label ID="Label37" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

                                       
                                             </td>
                                        <td>
                                            <asp:Label ID="Label38" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink37" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink38" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>
                                    </tr>
                                    <tr>
                                        <td>
                                
                                            <asp:Label ID="Label39" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                                       
                                             </td>
                                        <td>
                                            <asp:Label ID="Label40" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink39" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink40" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>

                                        </td>
                                    </tr>
                                </table>
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
                                    <h2>Add your workouts bellow:</h2>
                                <table class="w-100">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label41" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label42" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink41" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink42" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>
                                            </tr>
                                    <tr>
                                        <td>
                                
                                             <asp:Label ID="Label43" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

                                       
                                             </td>
                                        <td>
                                            <asp:Label ID="Label44" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink43" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink44" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>
                                    </tr>
                                    <tr>
                                        <td>
                                
                                               <asp:Label ID="Label45" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

                                       
                                             </td>
                                        <td>
                                            <asp:Label ID="Label46" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink45" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink46" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>
                                    </tr>
                                    <tr>
                                        <td>
                                
                                               <asp:Label ID="Label47" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

                                       
                                             </td>
                                        <td>
                                            <asp:Label ID="Label48" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink47" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink48" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>
                                    </tr>
                                    <tr>
                                        <td>
                                
                                            <asp:Label ID="Label49" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                                       
                                             </td>
                                        <td>
                                            <asp:Label ID="Label50" runat="server" Text="0" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                            <asp:HyperLink ID="HyperLink49" href="ExercisePage.aspx?Count=1" runat="server"><i class=" fa fa-arrow-up fa-2x"></i></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink50" href="?Count=-1" runat="server"><i class=" fa fa-arrow-down fa-2x "></i></asp:HyperLink>

                                        </td>
                                    </tr>
                                </table>
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
