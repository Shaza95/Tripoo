<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AcceptBooking.aspx.cs" Inherits="Tripoo.AcceptBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Accept booking</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="height: 100px; background-color:#02091B; padding-top:50px;">
            <label style="margin-left:100px; margin-right:50%; color:white; font-size:40px">
                    Transportation Site
            </label>
            <asp:Button ID="btnBack" runat="server" Text="Back" BackColor="#02091B" ForeColor="White" Font-Size="20px" Width="100px" Height="50px" BorderStyle="Groove"  OnClientClick="JavaScript: window.history.back(1); return false;" CausesValidation="false" />
       </div>
        <div id="Register" runat="server" style="padding:25px">

                <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Id" DataValueField="Id">
                </asp:CheckBoxList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Conn1 %>" SelectCommand="SELECT * FROM [BookingRequests] WHERE approved = 0"></asp:SqlDataSource>
            <asp:Button ID="btnRegister" runat="server" Text="Accept" OnClick="btnRegister_Click"  BackColor="#336699" ForeColor="White" Font-Size="15px" Width="150px" Height="50px" BorderStyle="Groove" />
            <asp:Button ID="btnReject" runat="server" Text="Reject" OnClick="btnReject_Click"  BackColor="#336699" ForeColor="White" Font-Size="15px" Width="150px" Height="50px" BorderStyle="Groove" />
        </div>
        <div style="height:50px; padding:25px;">
            <label style="margin-right:70%; color:#02091B; font-size:20px">
                    Available bookings:
            </label>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="25" HeaderStyle-BackColor="#336699" HeaderStyle-BorderColor="White" HeaderStyle-ForeColor="White" DataKeyNames="Id">
            <Columns>
                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId"/>
                <asp:BoundField DataField="PassengersNum" HeaderText="PassengersNum" SortExpression="PassengersNum"/>
                <asp:BoundField DataField="From" HeaderText="From" SortExpression="From" />
                <asp:BoundField DataField="To" HeaderText="To" SortExpression="To" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                <asp:BoundField DataField="Approved" HeaderText="Approved" SortExpression="Approved" Visible="false" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            </Columns>

<HeaderStyle BackColor="#336699" BorderColor="White" ForeColor="White"></HeaderStyle>
        </asp:GridView>
    
        </div>

    </div>
    </form>
</body>
</html>
