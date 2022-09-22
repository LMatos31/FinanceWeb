<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FinanceWeb.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body
        {
            background-image: url('Images/backgroud.jpg');
            background-size:cover;
            background-repeat:no-repeat;
            position:center;
        }
        #form1
        {
            background-color: darkgray;
            width: 340px;
            height: 260px;
        }
    </style>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div>
        <asp:Label ID="lblTitle0" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="XX-Large" Text="Register"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblPhrase0" runat="server" Font-Size="Small" Text="Please fill in details to register Username and Password!"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblUser" runat="server" BorderStyle="None" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Text="Username:"></asp:Label>
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblPassword" runat="server" BorderStyle="None" BorderWidth="2px" Font-Bold="True" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtPass" runat="server" Width="124px"></asp:TextBox>
        <br />
            <br />
            <asp:Label ID="lblCreate" runat="server" ForeColor="Lime" Text="Username and Password created successfully!" Visible="False"></asp:Label>
            <br />
        <br />
        <asp:Button ID="btnReg" runat="server" Font-Bold="True" Text="Register" OnClick="btnReg_Click" />
            <asp:Button ID="btnBack" runat="server" Font-Bold="True" OnClick="btnBack_Click" Text="Back" />
        </div>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinancesConnectionString %>" SelectCommand="SELECT * FROM [FINANCES]"></asp:SqlDataSource>
        </p>
    </form>
    </center>
</body>
</html>
