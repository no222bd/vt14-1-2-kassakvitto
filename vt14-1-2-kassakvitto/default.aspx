<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="vt14_1_2_kassakvitto._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
</head>
<body>
    <h1>Kassakvitto</h1>
    <form id="form1" runat="server" defaultbutton="CalculateButton" defaultfocus="AmountTextBox">
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
        </div>
    </form>
</body>
</html>
