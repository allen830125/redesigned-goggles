<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Start.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
        <asp:Label ID="Label1" runat="server" Text="日記帳系統" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="帳號" Font-Size="Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ACCOUNT_NAME" runat="server" Font-Size="Large" Width="210px"></asp:TextBox>    
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="密碼" Font-Size="Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ACCOUNT_PASSORD" runat="server" T Font-Size="Large" Width="210px"></asp:TextBox>    
        <br />
        <br />    
    </div>
        <asp:Button ID="SINF_IN" runat="server" Text="登入" Font-Size="X-Large" Height="35px" Width="110px" OnClick="SINF_IN_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </form>
</body>
</html>
