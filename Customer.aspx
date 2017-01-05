<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label5" runat="server" Text="廠商資料設定" Font-Size="Larger" Font-Bold="true" ForeColor="#666666"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CustomerNo" DataSourceID="SqlDataSource1" Width="900px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:Button>
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:Button>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯"></asp:Button>
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Select" Text="選擇"></asp:Button>
                    &nbsp;<asp:Button ID="Button3" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" OnClientClick="return confirm('再次確認')"></asp:Button>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="編號" InsertVisible="False" SortExpression="CustomerNo" HeaderStyle-Width="50">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("CustomerNo") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("CustomerNo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="名稱" SortExpression="CustomerNmae" HeaderStyle-Width="100">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CustomerNmae") %>' Width="80"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("CustomerNmae") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="負責人" SortExpression="CustomerRespMan" HeaderStyle-Width="100">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CustomerRespMan") %>' Width="80"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("CustomerRespMan") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="地址" SortExpression="CustomerAddress" HeaderStyle-Width="250">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CustomerAddress") %>' Width="200"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("CustomerAddress") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="電話" SortExpression="CustomerTel" HeaderStyle-Width="200">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CustomerTel") %>' Width="160"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("CustomerTel") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#EFF3FB" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:account_dbsConnectionString %>" DeleteCommand="DELETE FROM [account_Customer] WHERE [CustomerNo] = @CustomerNo" InsertCommand="INSERT INTO [account_Customer] ([CustomerNmae], [CustomerRespMan], [CustomerAddress], [CustomerTel]) VALUES (@CustomerNmae, @CustomerRespMan, @CustomerAddress, @CustomerTel)" SelectCommand="SELECT [CustomerNo], [CustomerNmae], [CustomerRespMan], [CustomerAddress], [CustomerTel] FROM [account_Customer]" UpdateCommand="UPDATE [account_Customer] SET [CustomerNmae] = @CustomerNmae, [CustomerRespMan] = @CustomerRespMan, [CustomerAddress] = @CustomerAddress, [CustomerTel] = @CustomerTel WHERE [CustomerNo] = @CustomerNo">
        <DeleteParameters>
            <asp:Parameter Name="CustomerNo" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerNmae" Type="String" />
            <asp:Parameter Name="CustomerRespMan" Type="String" />
            <asp:Parameter Name="CustomerAddress" Type="String" />
            <asp:Parameter Name="CustomerTel" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerNmae" Type="String" />
            <asp:Parameter Name="CustomerRespMan" Type="String" />
            <asp:Parameter Name="CustomerAddress" Type="String" />
            <asp:Parameter Name="CustomerTel" Type="String" />
            <asp:Parameter Name="CustomerNo" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Added" runat="server" Text="新增" Font-Size="Large" Width="80px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
</asp:Content>

