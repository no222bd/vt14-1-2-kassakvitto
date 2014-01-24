<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="vt14_1_2_kassakvitto._default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
</head>
<body>
    <h1>Kassakvitto</h1>
    <form id="form1" runat="server" defaultbutton="CalculateButton">
        <div>
            <p>
                <asp:Label ID="InputLabel" runat="server" Text="Total köpesumma:" AssociatedControlID="AmountTextBox"></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="AmountTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="Fältet måste innehålla ett värde" ControlToValidate="AmountTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator" runat="server" ErrorMessage="Måste vara ett decimaltal" ControlToValidate="AmountTextBox" Type="Currency" Operator="DataTypeCheck" ValueToCompare=">0" Display="Dynamic"></asp:CompareValidator>
            </p>
            <p>
                <asp:Button ID="CalculateButton" runat="server" Text="Beräkna rabatt" OnClick="CalculateButton_Click" />
            </p>

            <asp:Panel ID="ReceiptPanel" runat="server" Visible="False">
                <h2>Kvitto</h2>
                <p>Carrefour Malmö</p>
                <p>Tel: 040-154578</p>
                <p>Öppettid 9-22</p>

                <p>Totalt</p>
                <asp:Literal ID="SubtotalLiteral" runat="server"></asp:Literal>
            
                <p>Rabattsats</p>
                <asp:Literal ID="DiscountRateLiteral" runat="server"></asp:Literal>
            
                <p>Rabatt</p>
                <asp:Literal ID="MoneyOffLiteral" runat="server"></asp:Literal>
            
                <p>Att betala</p>
                <asp:Literal ID="TotalLiteral" runat="server"></asp:Literal>
            
                <p>ORG.NR 551015-4477</p>
                <p>Välkommen åter!</p>
            </asp:Panel>
        </div>
    </form>

    <script src="Scripts/script.js"></script>
</body>
</html>
