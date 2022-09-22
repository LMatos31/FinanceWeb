<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinanceWeb.WebForm1" %>

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
        .userLogin
        {
            padding:25px;
            padding-top:35px;

        }
        #form1
        {
            background-color: darkgray;
            width: 300px;
            height: 350px;
        }
    </style>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div class ="userLogin">
        <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="XX-Large" Text="Welcome to CalculateMe!"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblPhrase" runat="server" Font-Size="Small" Text="Please fill in your login details!"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblUser" runat="server" BorderStyle="None" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Text="Username:"></asp:Label>
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblPassword" runat="server" BorderStyle="None" BorderWidth="2px" Font-Bold="True" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Small" ForeColor="#990000" Text="Username or Password is incorrect, Please try again!" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" Font-Bold="True" Text="Login" OnClick="btnLogin_Click" />
            <asp:Button ID="btnReg" runat="server" Font-Bold="True" OnClick="btnReg_Click" Text="Register" />
        </div>
    </form>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinancesConnectionString %>" SelectCommand="SELECT * FROM [FINANCES]"></asp:SqlDataSource>
</body>
</html>
