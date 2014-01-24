<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="vt14_1_2_kassakvitto._default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
    <link href="~/content/style.css" rel="stylesheet" />
</head>
<body>
        <div id="container">
    <h1>Kassakvitto</h1>
            <p id="creator">Nils-Jakob Olsson, no222bd, WP2012(2013) Distans</p>
    <form id="form1" runat="server" defaultbutton="CalculateButton">
        <div>
            <p>
                <asp:Label ID="InputLabel" runat="server" Text="Total köpesumma:" AssociatedControlID="AmountTextBox"></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="AmountTextBox" runat="server"></asp:TextBox>
                <span> kr</span></p>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="Fältet måste innehålla ett värde" ControlToValidate="AmountTextBox" Display="Dynamic" CssClass="validationError"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator" runat="server" ErrorMessage="Måste vara ett decimaltal" ControlToValidate="AmountTextBox" Type="Currency" Operator="DataTypeCheck" ValueToCompare=">0" Display="Dynamic" CssClass="validationError"></asp:CompareValidator>
            
            <p>
                <asp:Button ID="CalculateButton" runat="server" Text="Beräkna rabatt" OnClick="CalculateButton_Click" />
            </p>

            <asp:Panel ID="ReceiptPanel" runat="server" Visible="False">
                <h2>Carrefour Malmö</h2>
                <p>Tel: 040-154578</p>
                <p>Öppettider 9-22</p>

                <div id="output">
                    <span>Totalt</span>
                    <asp:Label ID="SubtotalLabel" runat="server"></asp:Label><br />
                
                    <span>Rabattsats</span>
                    <asp:Label ID="DiscountRateLabel" runat="server"></asp:Label><br />
                
                    <span>Rabatt</span>
                    <asp:Label ID="MoneyOffLabel" runat="server"></asp:Label><br />
                
                    <span>Att betala</span>
                    <asp:Label ID="TotalLabel" runat="server"></asp:Label>
                </div><!-- output -->
                
                <p>ORG.NR 551015-4477</p>
                <p>Välkommen åter!</p>
            </asp:Panel>
        </div>
    </form>
    </div><!-- container -->

    <script src="Scripts/script.js"></script>
</body>
</html>
