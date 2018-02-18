﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EventBooking.aspx.cs" Inherits="User_EventBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" class="form-inline">
    <div style="margin-left:auto;margin-right:auto;">
        <table>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Bold></asp:Label></td>
            </tr>
            <tr>
                <td>Select The Event</td>
                <td>
                    <asp:DropDownList ID="ddlEvent" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlEvent_SelectedIndexChanged"></asp:DropDownList>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlEvent" ErrorMessage="*" ForeColor="Red" InitialValue="-1" ToolTip="true"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td>Select The Venue</td>
                <td>
                    <asp:DropDownList ID="ddlVenue" runat="server">
                        <asp:ListItem Selected="True" Value="-1">--Select Venue--</asp:ListItem>
                    </asp:DropDownList>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" InitialValue="-1" ErrorMessage="*" ControlToValidate="ddlVenue" ForeColor="Red" ToolTip="true"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td>Select The Event Date</td>
                <td>
                    <asp:TextBox ID="ddlDate" runat="server" placeholder="dd/MM/yyyy"></asp:TextBox>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlDate" ErrorMessage="*" SetFocusOnError="true" ForeColor="Red" ToolTip="true"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="ddlDate" SetFocusOnError="true" ErrorMessage="Date should be in dd/MM/yyyy format" ForeColor="Red" ValidationExpression="(^(((0[1-9]|1[0-9]|2[0-8])[\/](0[1-9]|1[012]))|((29|30|31)[\/](0[13578]|1[02]))|((29|30)[\/](0[4,6,9]|11)))[\/](19|[2-9][0-9])\d\d$)|(^29[\/]02[\/](19|[2-9][0-9])(00|04|08|12|16|20|24|28|32|36|40|44|48|52|56|60|64|68|72|76|80|84|88|92|96)$)"></asp:RegularExpressionValidator>
                    
                </td>
            </tr>
            <tr>
                <td>Select The Attendant Quantity</td>
                <td>
                    <asp:DropDownList ID="ddlQuantity" runat="server">
                        <asp:ListItem Value="-1">--Select Attendant Quantity--</asp:ListItem>
                        <asp:ListItem>200</asp:ListItem>
                        <asp:ListItem>400</asp:ListItem>
                        <asp:ListItem>600</asp:ListItem>
                       
                    </asp:DropDownList>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" InitialValue="-1" ControlToValidate="ddlQuantity" ErrorMessage="*" ForeColor="Red" ToolTip="true"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Select The Food Type</td>
                <td>
                    <asp:DropDownList ID="ddlFood" runat="server">
                         <asp:ListItem Selected="True" Value="-1">--Select Food Type--</asp:ListItem>
                        <asp:ListItem Value="RoyalFoodCharge">Royal</asp:ListItem>
                        <asp:ListItem Value="PremiumFoodCharge">Premium</asp:ListItem>
                        <asp:ListItem Value="NormalFoodCharge">Normal</asp:ListItem>
                    </asp:DropDownList>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" InitialValue="-1" ControlToValidate="ddlFood" ErrorMessage="*" ForeColor="Red" ToolTip="true"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td>Select The Decoration Type</td>
                <td>
                    <asp:DropDownList ID="ddlDecoration" runat="server">
                         <asp:ListItem Selected="True" Value="-1">--Select Decoration Type--</asp:ListItem>
                        <asp:ListItem Value="RoyalDecorationCharge">Royal</asp:ListItem>
                        <asp:ListItem Value="PremiumDecorationCharge">Premium</asp:ListItem>
                        <asp:ListItem Value="NormalDecorationCharge">Normal</asp:ListItem>
                    </asp:DropDownList>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" InitialValue="-1" ControlToValidate="ddlDecoration" ErrorMessage="*" ForeColor="Red" ToolTip="true"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnBook" runat="server" Text="Book" />
                </td>
                <td>
                    <asp:Button ID="btnPrice" runat="server" Text="CalculatePrice" OnClick="btnPrice_Click" />
                </td>
            </tr>
        </table>
    </div>

    </form>
</body>
</html>
