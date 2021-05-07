<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Tripoo.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin dashboard</title>
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
                            <asp:Button ID="CompaniesManagement" runat="server" Text="Companies" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="CompaniesManagement_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="margin: 100px; padding: 25px">
                            <asp:Button ID="OffersManagement" runat="server" Text="Offers" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="OffersManagement_Click" />
                        </td>
                        <td style="margin: 100px; padding: 25px">
                            <asp:Button ID="TransportsManagement" runat="server" Text="TransportsManagement" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="TransportsManagement_Click" />
                        </td>
                        <td style="margin: 100px; padding: 25px">
                            <asp:Button ID="TripsManagement" runat="server" Text="Trips" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="TripsManagement_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="margin: 100px; padding: 25px">
                            <asp:Button ID="UsersManagement" runat="server" Text="Users" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="UsersManagement_Click" />
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
