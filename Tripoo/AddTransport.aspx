<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" ValidateRequest="false" CodeBehind="AddTransport.aspx.cs" Inherits="Tripoo.AddTransport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add transport</title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color: #02091B;">
    <form id="form1" runat="server">
        <div style="margin:0 0 auto; margin-left: 400px; margin-top: 5px; width: 500px; padding-top:5px; background-image:url('images/2.jpg')">
             <table>
                <tr>
                    <td>
                        <asp:Button ID="btnBack" runat="server" Text="Back" ForeColor="White" BorderStyle="None" BackColor="#02091B" Font-Size="Large" OnClientClick="JavaScript: window.history.back(1); return false;" CausesValidation="false" />
                    </td>
                </tr>
            </table>
            <table style="margin-left:85px;">
                <tr>
                    <td>
                         <input style="color:#0B1054; background-color:transparent; height:40px; width:315px; padding-left:15px" id="txtName" runat="server" type="text" placeholder="Name"/>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter name"  ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList Width="315px" ID="DDLType" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Conn1 %>" SelectCommand="SELECT * FROM [TransportType]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Choose type"  ControlToValidate="DDLType"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input style="color:#0B1054; background-color:transparent; height:40px; width:315px; padding-left:15px" id="txtSeats" runat="server" type="number" placeholder="Seats"/>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter seats"  ControlToValidate="txtSeats"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" Width="315px" DataValueField="Id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn1 %>" SelectCommand="SELECT [Id], [Name] FROM [Company1]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Choose transport"  ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Button ID="btnSubmit" runat="server" Text="Add" onclick="btnSubmit_Click" Height="40px" Width="250px" ForeColor="White" BorderStyle="None" BackColor="#02091B" Font-Size="X-Large"/>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
