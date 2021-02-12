﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Tripoo.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test dashboard</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="height: 100px; background-color: #02091B; padding-top: 50px;">
                <label style="margin-left: 100px; margin-right: 50%; color: white; font-size: 40px">
                    Tripoo Site
                </label>
            </div>
            <div style="height: 250px; background-image: url('images/5.jpg'); padding: 60px">
                <table>
                    <tr>
                        <td style="margin: 100px; padding: 25px">
                            <asp:Button ID="AcceptBooking" runat="server" Text="Accept booking" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="AcceptBooking_Click" />
                        </td>
                        <td style="margin: 100px; padding: 25px">
                            <asp:Button ID="AcceptCompany" runat="server" Text="Accept company" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="AcceptCompany_Click" />
                        </td>
                        <td style="margin: 100px; padding: 25px">
                            <asp:Button ID="AddCompany" runat="server" Text="Add company" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="AddCompany_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="margin: 100px; padding: 25px">
                            <asp:Button ID="AddOffer" runat="server" Text="Add offer" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="AddOffer_Click" />
                        </td>
                        <td style="margin: 100px; padding: 25px">
                            <asp:Button ID="AddTransport" runat="server" Text="Add transport" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="AddTransport_Click" />
                        </td>
                        <td style="margin: 100px; padding: 25px">
                            <asp:Button ID="AddTrip" runat="server" Text="Add trip" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="AddTrip_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="margin: 100px; padding: 25px">
                            <asp:Button ID="AddUser" runat="server" Text="Add user" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="AddUser_Click" />
                        </td>
                        <td style="margin: 100px; padding: 25px">
                            <asp:Button ID="BookSpecialTrip" runat="server" Text="Book special trip" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="BookSpecialTrip_Click" />
                        </td>
                        <td style="margin: 100px; padding: 25px">
                            <asp:Button ID="Chat" runat="server" Text="Chat" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="Chat_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
