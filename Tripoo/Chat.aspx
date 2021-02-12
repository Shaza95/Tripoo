<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="Tripoo.Chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chat</title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function scroll() {
            var box = document.getElementById('old');
            box.scrollTop = box.scrollHeight;
        }
    </script>
</head>
<body style="background-color: lavender">
    <form id="form1" runat="server">
    <div id="old" runat="server" style=" margin-left:10px; height:550px; overflow:hidden; overflow-y:scroll;"  onload="old_Load">
       
    </div>
        <div id="newMessage" style="position:fixed; left: 15px; bottom: 17px;">
            <asp:TextBox ID="TextBox1" runat="server" MaxLength="250" Height="35px" Width="340px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="send" Height="34px" OnClick="Button1_Click" Width="62px" style="background-color:darkcyan; color: white; "/>
        </div>
    </form>
</body>
</html>
