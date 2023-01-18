<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Position.aspx.cs" Inherits="week7.Position" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery.validate.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <h1>Create New Position</h1>
        <div>
            <label>PositionCode</label>
            <asp:Label ID="TxtPositionCode" runat="server" Text="Label"></asp:Label>
            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please Select a Year" ControlToValidate="DropDownyear" runat="server" />        </div>
         <div>
            <label>Description</label>
            <asp:Label ID="TxtDescription" runat="server" Text="Label"></asp:Label>
            <asp:RequiredFieldValidator Forecolor="Red" Id="RfvDescription" runat="server" ControlToValidate="TxtDescription" ErrorMessage="Please Enter Description"/>
        </div>
        <div>
            <label>Year</label>
            <asp:DropDownList ID="TxtYear" runat="server">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>2024</asp:ListItem>
                <asp:ListItem>2025</asp:ListItem>
                <asp:ListItem>2026</asp:ListItem>
                <asp:ListItem>2027</asp:ListItem>
                <asp:ListItem>2028</asp:ListItem>

            </asp:DropDownList>
            <asp:RequiredFieldValidator Forecolor="Red" Id="RfvYear" runat="server" ControlToValidate="TxtYear" ErrorMessage="Please Enter Year"/>

        </div>
        <div>
            <label>BudgetedStrength</label>
            <asp:Label ID="TxtBudgetedStrength" runat="server" Text="Label"></asp:Label>
            <asp:RequiredFieldValidator Forecolor="Red" Id="RfvBudgetedStrength" runat="server" ControlToValidate="TxtBudgetedStrength" ErrorMessage="Please Enter BudgetedStrength"/>

        </div>
        <div>
            <label>CurrentStrength</label>
            <asp:Label ID="TxtCurrentStrength" runat="server" Text="Label"></asp:Label>
            <asp:RequiredFieldValidator Forecolor="Red" Id="RfvCurrentStrength" runat="server" ControlToValidate="TxtCurretStrength" ErrorMessage="Please Enter CurrentStrength"/>
        </div>
        <asp:Button Text="Submit" ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click"  />
        <asp:Button Text="Reset" ID="BtnRset" runat="server" OnClick="BtnRset_Click"  />
            </div>
        <div>
            <asp:Label ID="LblMessage" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
