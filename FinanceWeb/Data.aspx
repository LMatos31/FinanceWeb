<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="FinanceWeb.Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 93px;
        }
        .auto-style3 {
            width: 93px;
            text-align: center;
        }
        .auto-style4 {
            width: 104px;
        }
        .auto-style5 {
            width: 117px;
        }
        .auto-style6 {
            width: 129px;
        }
        .auto-style7 {
            text-align: center;
        }
        body
        {
            background-image: url('Images/backgroud.jpg');
            background-size:cover;
            background-repeat:repeat;
            position:center;
        }
        .auto-style8 {
            width: 106px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="9" class="auto-style7">
        <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="XX-Large" Text="CalculateMe!"></asp:Label>
                    </td>
                </tr>
    <center>
                <tr>
                    <td colspan="9">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="Income &amp; Expenses"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="Home Rental"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td colspan="2">
                        <asp:Label ID="Label20" runat="server" Font-Bold="True" Text="Home Purchase"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:Label ID="Label21" runat="server" Font-Bold="True" Text="Vehicle Purchase"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Gross Monthly Income:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtIncome" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="Label8" runat="server" Text="Monthly Rental Amount:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtRent" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label9" runat="server" Text="Purchase Price:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtHPP" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="Label13" runat="server" Text="Make and Model:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMM" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Monthly Tax Deducted:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTax" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label10" runat="server" Text="Total Deposit:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtHTD" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="Label14" runat="server" Text="Purchase Price:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtVPP" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Groceries:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtGroc" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label11" runat="server" Text="Interest Rate:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtHIR" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="Label15" runat="server" Text="Total Deposit:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtVTD" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Water and Light:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtWL" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label12" runat="server" Text="Number of Months to repay:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMonths" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="Label16" runat="server" Text="Interest Rate:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtVIR" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Travel Costs:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTravel" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Label ID="Label17" runat="server" Text="Insurance Premium:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtInsurance" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Cellphone and Telephone:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCell" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Other Expenses:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtOther" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
    </center>
                <tr>
                    <td class="auto-style7" colspan="9">
                        <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
    <center>
                <tr>
                    <td colspan="9">&nbsp;</td>
                </tr>
    </center>
                <tr>
                    <td colspan="9" class="auto-style7">
                        <asp:GridView ID="dtgFinance" runat="server" Width="746px">
                        </asp:GridView>
                    </td>
                </tr>
    <center>
                <tr>
                    <td colspan="9">&nbsp;</td>
                </tr>
    </center>
                <tr>
                    <td class="auto-style7" colspan="4">
                        <asp:Button ID="btnDisplay" runat="server" Font-Bold="True" Text="Display" OnClick="btnDisplay_Click" />
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="btnChart" runat="server" Font-Bold="True" Text="See Chart" OnClick="btnChart_Click" />
                    </td>
                    <td colspan="4" class="auto-style7">
                        <asp:Button ID="btnSignOut" runat="server" Font-Bold="True" Text="Sign Out" OnClick="btnSignOut_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
    </body>
</html>
