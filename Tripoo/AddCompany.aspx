﻿<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" ValidateRequest="false" CodeBehind="AddCompany.aspx.cs" Inherits="Tripoo.AddCompany" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add company</title>
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
