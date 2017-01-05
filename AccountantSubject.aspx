<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AccountantSubject.aspx.cs" Inherits="AccountantSubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label5" runat="server" Text="會計科目設定" Font-Size="Larger" Font-Bold="true" ForeColor="#666666"></asp:Label>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:Panel ID="Panel1" runat="server" BackColor="#EFF3FB">
        <asp:Label ID="Label1" runat="server" Text="科目代號選擇:" Font-Size="Large" Font-Bold="true" ForeColor="#666666"></asp:Label>
        &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Width="150px" Font-Size="Large" AutoPostBack="True">
        <asp:ListItem>全部科目</asp:ListItem>
        <asp:ListItem>資產類</asp:ListItem>
        <asp:ListItem>負債類</asp:ListItem>
        <asp:ListItem>股東權益類</asp:ListItem>
        <asp:ListItem>營業收入及成本</asp:ListItem>
        <asp:ListItem>營業費用</asp:ListItem>
        <asp:ListItem>營業外收入及支出</asp:ListItem>
        <asp:ListItem>所得及非經常經營損益</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
    </asp:Panel>
    
    <br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Added" runat="server" Text="新增" Font-Size="Large" Width="80px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Modify" runat="server" Text="修改" Font-Size="Large" Width="80px"  Visible="False"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Delete" runat="server" Text="刪除" Font-Size="Large" Width="80px" Visible="False"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    


</asp:Content>

