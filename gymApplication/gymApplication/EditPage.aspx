<%@ Page Title="" Language="C#" MasterPageFile="~/GraphMasterWebPage.Master" AutoEventWireup="true" CodeBehind="EditPage.aspx.cs" Inherits="gymApplication.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    
     <div class="col-sm-12 col-md-6 col-lg-12 mt-sm-5 mb-3">
            <div class="form-group row">
                
                <div class="col-lg-4 col-md-5 col-sm-1 mx-auto ">
                    <asp:TextBox ID="txtbio" runat="server" class="form-control " aria-describedby="emailHelp" placeholder="Enter your brief bio" Height="100" ></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                
                <div class="col-lg-4 col-md-5 col-sm-1 mx-auto ">
                    <asp:TextBox ID="txtage" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Enter your age"></asp:TextBox>
                </div>
            </div>
           
            <div class="form-group row ">
                
                <div class="col-lg-4 col-md-5 col-sm-1 mx-auto">
                    <asp:TextBox ID="txtweight" type ="password" runat="server" class="form-control" placeholder="Enter your height"></asp:TextBox> 
                </div>
            </div>
            <div class="form-group row">
                
                <div class="col-lg-4 col-md-5 col-sm-1 mx-auto text-center"> 
                    <i class="fa fa-image fa-5x"></i><br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </div>
            </div>
            <div class="col-lg-4 col-md-5 col-sm-1 mx-auto text-center">
                
                <asp:Button class="btn btn-primary  text-center" ID="Button1" runat="server" Text="Sign Up" Width="200px" OnClick="Button1_Click"  />
            </div>
            

        </div>

</asp:Content>
