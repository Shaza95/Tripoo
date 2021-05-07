<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDashboard.aspx.cs" Inherits="Tripoo.CustomerDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer dashboard</title>
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
                            <asp:Button ID="ViewTrips" runat="server" Text="View trips" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="ViewTrips_Click" />
                        </td>
                        <td style="margin: 100px; padding: 25px">
                            <asp:Button ID="BookingTrip" runat="server" Text="Booking trip" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="BookingTrip_Click" />
                        </td>
                        <td style="margin: 100px; padding: 25px">
                            <asp:Button ID="BookinSpecialTrip" runat="server" Text="Booking special trip" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="BookingSpecialTrip_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
