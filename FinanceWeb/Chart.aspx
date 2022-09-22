<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chart.aspx.cs" Inherits="FinanceWeb.Chart" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

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
    </style>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div>
        <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="XX-Large" Text="Welcome to CalculateMe!"></asp:Label>
        <br />
        <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="The chart below will display the monthly income, monthly expenditures and the account balance!"></asp:Label>
            <br />
            <br />
            <asp:Chart ID="cTotal" runat="server" BackColor="Transparent" BorderlineColor="Transparent" DataSourceID="SqlDataSource1">
                <series>
                    <asp:Series ChartType="Bar" Name="Series1">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinancesConnectionString %>" SelectCommand="SELECT [GROSS_MONTHLY_INCOME], [MONTHLY_TAX_DEDUCTED], [GROCERIES], [WATER_AND_LIGHT], [TRAVEL_COSTS], [TELEPHONE], [OTHER_EXPENSES] FROM [FINANCES]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="btnDisplay" runat="server" Font-Bold="True" OnClick="btnDisplay_Click" Text="Display" />
            <asp:Button ID="btnBack" runat="server" Font-Bold="True" OnClick="btnBack_Click" Text="Back" />
        </div>
    </form>
    </center>
</body>
</html>
