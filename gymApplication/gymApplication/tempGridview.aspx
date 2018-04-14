<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tempGridview.aspx.cs" Inherits="gymApplication.tempGridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:SqlDataSource ID="RegistrationDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
			<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserEmail" DataSourceID="RegistrationDataSource" Height="152px" Width="455px">
				<Columns>
					<asp:CommandField ShowSelectButton="True" />
					<asp:BoundField DataField="UserEmail" HeaderText="UserEmail" ReadOnly="True" SortExpression="UserEmail" />
					<asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
					<asp:BoundField DataField="UserPassword" HeaderText="UserPassword" SortExpression="UserPassword" />
                    <asp:BoundField DataField="saltpassword" HeaderText="saltpassword" SortExpression="saltpassword" />
				</Columns>
			</asp:GridView>
        </div>
    </form>
</body>
</html>
