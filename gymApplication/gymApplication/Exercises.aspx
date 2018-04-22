<%@ Page Title="" Language="C#" MasterPageFile="~/GraphMasterWebPage.Master" AutoEventWireup="true" CodeBehind="Exercises.aspx.cs" Inherits="gymApplication.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row mb-3 align-content-center">   
            <div class="col-sm-2 col-lg-12 text-center">
                <div class="row-12 m-3 p-2 text-center">
               <h1><asp:Label ID="name" runat="server" Text=""></asp:Label><asp:Button class=" btn m-3 btn-primary align-center w-50" ID="active" runat="server" Text="Add to your routine" OnClick="Active_Click" /></h1>
                </div>
                
                <! --------------------------------------- LEG SECTION ---------------------------------------------------->
                  
                <div class="p-2 text-center bg-dark text-white ">
                        <h1>Legs </h1>
                   </div>

                    <div class="row m-3">
                      <div class="col  ">
                               <div class="card" style="width: 25rem;">
                                    <asp:Image CssClass=" img-thumbnail " style="width:100%" ID="lblleg1p" runat="server"   />
                                  <div class="card-body text-center ">
                                    <h3><b><asp:Label ID="lblleg1" runat="server" Text=""></asp:Label></b></h3>
                                  </div>
                               </div>
                      </div>
                      <div class="col text-left p-3 ">
                          <asp:Label ID="lblleg1d" runat="server" Text="Label"></asp:Label>
                          <asp:Button CssClass="btn btn-danger w-100" ID="btnlegs1" runat="server" Text="" />
                      </div>
                        <div class="w-100"></div>
                      <div class="col mt-3">
                            <div class="card" style="width: 25rem;">
                                     <asp:Image CssClass=" img-thumbnail " style="width:100%" ID="lblleg2p" runat="server"  />
                                  <div class="card-body text-center ">
                                     <h3><b><asp:Label ID="lblleg2" runat="server" Text="Label"></asp:Label></b></h3>
                                  </div>
                               </div>

                      </div>
                      <div class="col text-left p-3 mt-5 ">
                          <asp:Label  ID="lblleg2d" runat="server" Text="Label"></asp:Label>
                          <asp:Button CssClass="btn btn-danger w-100" ID="btnlegs2" runat="server" Text="" />
                      </div>
                    </div>


                <! --------------------------------------- ABS SECTION ---------------------------------------------------->
                  
                <div class="p-2 text-center bg-dark text-white ">
                        <h1> Abs </h1>
                   </div>

                    <div class="row m-3">
                      <div class="col  ">
                               <div class="card" style="width: 25rem;">
                                    <asp:Image CssClass=" img-thumbnail " style="width:100%" ID="lblabsp1" runat="server"  />
                                  <div class="card-body text-center ">
                                    <h3><b><asp:Label ID="lblabs1" runat="server" Text=""></asp:Label></b></h3>
                                  </div>
                               </div>
                      </div>
                      <div class="col text-left p-3 ">
                          <asp:Label ID="lblabsd1" runat="server" Text="Label"></asp:Label>
                           <asp:Button CssClass="btn btn-danger w-100" ID="btnabs1" runat="server" Text="" />
                      </div>
                        <div class="w-100"></div>
                      <div class="col mt-3">
                            <div class="card" style="width: 25rem;">
                                     <asp:Image CssClass=" img-thumbnail " style="width:100%" ID="lblabsp2" runat="server"  />
                                  <div class="card-body text-center ">
                                     <h3><b><asp:Label ID="lblabs2" runat="server" Text="Label"></asp:Label></b></h3>
                                  </div>
                               </div>

                      </div>
                      <div class="col text-left p-3 mt-5 ">
                          <asp:Label  ID="lblabsd2" runat="server" Text="Label"></asp:Label>
                           <asp:Button CssClass="btn btn-danger w-100" ID="btnabs2" runat="server" Text="" />
                      </div>
                    </div>

                <! --------------------------------------- BACK SECTION ---------------------------------------------------->
                  
                <div class="p-2 text-center bg-dark text-white ">
                        <h1>Back</h1>
                   </div>

                    <div class="row m-3">
                      <div class="col  ">
                               <div class="card" style="width: 25rem;">
                                    <asp:Image CssClass=" img-thumbnail " style="width:100%" ID="lblbackp1" runat="server" ImageUrl="pictures/legs/legPress.jpg"  />
                                  <div class="card-body text-center ">
                                    <h3><b><asp:Label ID="lblback1" runat="server" Text=""></asp:Label></b></h3>
                                  </div>
                               </div>
                      </div>
                      <div class="col text-left p-3 ">
                          <asp:Label ID="lblbackd1" runat="server" Text="Label"></asp:Label>
                           <asp:Button CssClass="btn btn-danger w-100" ID="btnback1" runat="server" Text="" />
                      </div>
                        <div class="w-100"></div>
                      <div class="col mt-3">
                            <div class="card" style="width: 25rem;">
                                     <asp:Image CssClass=" img-thumbnail " style="width:100%" ID="lblbackp2" runat="server" ImageUrl="pictures/legs/stepUp.jpg" />
                                  <div class="card-body text-center ">
                                     <h3><b><asp:Label ID="lblback2" runat="server" Text="Label"></asp:Label></b></h3>
                                  </div>
                               </div>

                      </div>
                      <div class="col text-left p-3 mt-5 ">
                          <asp:Label  ID="lblbackd2" runat="server" Text="Label"></asp:Label>
                           <asp:Button CssClass="btn btn-danger w-100" ID="btnback2" runat="server" Text="" />
                      </div>
                    </div>


                <! --------------------------------------- CHEST SECTION ---------------------------------------------------->
                  
                <div class="p-2 text-center bg-dark text-white ">
                        <h1>Chest </h1>
                   </div>

                    <div class="row m-3">
                      <div class="col  ">
                               <div class="card" style="width: 25rem;">
                                    <asp:Image CssClass=" img-thumbnail " style="width:100%" ID="lblchestp1" runat="server" ImageUrl="pictures/legs/legPress.jpg"  />
                                  <div class="card-body text-center ">
                                    <h3><b><asp:Label ID="lblchest1" runat="server" Text=""></asp:Label></b></h3>
                                  </div>
                               </div>
                      </div>
                      <div class="col text-left p-3 ">
                          <asp:Label ID="lblchestd1" runat="server" Text="Label"></asp:Label>
                           <asp:Button CssClass="btn btn-danger w-100" ID="btnchest1" runat="server" Text="" />
                      </div>
                        <div class="w-100"></div>
                      <div class="col mt-3">
                            <div class="card" style="width: 25rem;">
                                     <asp:Image CssClass=" img-thumbnail " style="width:100%" ID="lblchestp2" runat="server" ImageUrl="pictures/legs/stepUp.jpg" />
                                  <div class="card-body text-center ">
                                     <h3><b><asp:Label ID="lblchest2" runat="server" Text="Label"></asp:Label></b></h3>
                                  </div>
                               </div>

                      </div>
                      <div class="col text-left p-3 mt-5 ">
                          <asp:Label  ID="lblchestd2" runat="server" Text="Label"></asp:Label>
                           <asp:Button CssClass="btn btn-danger w-100" ID="btnchest2" runat="server" Text="" />
                      </div>
                    </div>


                <! --------------------------------------- BICEPS SECTION ---------------------------------------------------->
                  
                <div class="p-2 text-center bg-dark text-white ">
                        <h1>Biceps </h1>
                   </div>

                    <div class="row m-3">
                      <div class="col  ">
                               <div class="card" style="width: 25rem;">
                                    <asp:Image CssClass=" img-thumbnail " style="width:100%" ID="lblbicepsp1" runat="server" ImageUrl="pictures/legs/legPress.jpg"  />
                                  <div class="card-body text-center ">
                                    <h3><b><asp:Label ID="lblbiceps1" runat="server" Text=""></asp:Label></b></h3>
                                  </div>
                               </div>
                      </div>
                      <div class="col text-left p-3 ">
                          <asp:Label ID="lblbicepsd1" runat="server" Text="Label"></asp:Label>
                           <asp:Button CssClass="btn btn-danger w-100" ID="btnbiceps1" runat="server" Text="" />
                      </div>
                        <div class="w-100"></div>
                      <div class="col mt-3">
                            <div class="card" style="width: 25rem;">
                                     <asp:Image CssClass=" img-thumbnail " style="width:100%" ID="lblbicepsp2" runat="server" ImageUrl="pictures/legs/stepUp.jpg" />
                                  <div class="card-body text-center ">
                                     <h3><b><asp:Label ID="lblbiceps2" runat="server" Text="Label"></asp:Label></b></h3>
                                  </div>
                               </div>

                      </div>
                      <div class="col text-left p-3 mt-5 ">
                          <asp:Label  ID="lblbicepsd2" runat="server" Text="Label"></asp:Label>
                           <asp:Button CssClass="btn btn-danger w-100" ID="btnbiceps2" runat="server" Text="" />
                      </div>
                    </div>

                 <! --------------------------------------- TRICEPS SECTION ---------------------------------------------------->
                  
                <div class="p-2 text-center bg-dark text-white ">
                        <h1>Triceps </h1>
                   </div>

                    <div class="row m-3">
                      <div class="col  ">
                               <div class="card" style="width: 25rem;">
                                    <asp:Image CssClass=" img-thumbnail " style="width:100%" ID="lbltricepsp1" runat="server" ImageUrl="pictures/legs/legPress.jpg"  />
                                  <div class="card-body text-center ">
                                    <h3><b><asp:Label ID="lbltriceps1" runat="server" Text=""></asp:Label></b></h3>
                                  </div>
                               </div>
                      </div>
                      <div class="col text-left p-3 ">
                          <asp:Label ID="lbltricepsd1" runat="server" Text="Label"></asp:Label>
                           <asp:Button CssClass="btn btn-danger w-100" ID="btntriceps1" runat="server" Text="" />
                      </div>
                        <div class="w-100"></div>
                      <div class="col mt-3">
                            <div class="card" style="width: 25rem;">
                                     <asp:Image CssClass=" img-thumbnail " style="width:100%" ID="lbltricepsp2" runat="server" ImageUrl="pictures/legs/stepUp.jpg" />
                                  <div class="card-body text-center ">
                                     <h3><b><asp:Label ID="lbltriceps2" runat="server" Text="Label"></asp:Label></b></h3>
                                  </div>
                               </div>

                      </div>
                      <div class="col text-left p-3 mt-5 ">
                          <asp:Label  ID="lbltricepsd2" runat="server" Text="Label"></asp:Label>
                           <asp:Button CssClass="btn btn-danger w-100" ID="btntriceps2" runat="server" Text="" />
                      </div>
                    </div>
            </div>
        </div>
    </div>




</asp:Content>
