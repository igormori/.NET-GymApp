<%@ Page Title="" Language="C#" MasterPageFile="~/GraphMasterWebPage.Master" AutoEventWireup="true" CodeBehind="EditPage.aspx.cs" Inherits="gymApplication.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    
     <div class="col-sm-12 col-md-6 col-lg-12 mt-sm-5 mb-3">
            <div class="form-group row">
                
                <div class="col-lg-4 col-md-5 col-sm-1 mx-auto ">
                    <asp:TextBox ID="txtbio" runat="server" class="form-control " placeholder="Enter your brief bio" Height="100" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bio cannot be blank" ControlToValidate="txtbio"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                
                <div class="col-lg-4 col-md-5 col-sm-1 mx-auto ">
                    <asp:TextBox ID="txtage" runat="server" class="form-control"  placeholder="Enter your age"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Age cannot be blank" ControlToValidate="txtage"></asp:RequiredFieldValidator>
                </div>
            </div>
           
            <div class="form-group row ">
                
                <div class="col-lg-4 col-md-5 col-sm-1 mx-auto">
                    <asp:TextBox ID="txtweight" runat="server" class="form-control" placeholder="Enter your height"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Weigth cannot be blank" ControlToValidate="txtweight"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group row">
                
                <div class="col-lg-4 col-md-5 col-sm-1 mx-auto text-center"> 
                    <i class="fa fa-image fa-5x"></i><br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </div>
            </div>
            <div class="col-lg-4 col-md-5 col-sm-1 mx-auto text-center">
                
                <asp:Button class="btn btn-primary  text-center" ID="Button1" runat="server" Text="Update" Width="200px" OnClick="Button1_Click"  />
            </div>
            

        </div>

</asp:Content>
