<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Company.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:Label ID="Label5" runat="server" Text="公司資料設定" Font-Size="Larger" Font-Bold="true" ForeColor="#666666"></asp:Label>
        <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CompanyNo" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="900px" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <ItemTemplate>
                    &nbsp;<asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Select" Text="選取" />
                    &nbsp;<asp:Button ID="Button3" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" OnClientClick="return confirm('再次確認')"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="編號" InsertVisible="False" SortExpression="CompanyNo" HeaderStyle-Width="50">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("CompanyNo") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("CompanyNo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="名稱" SortExpression="CompanyName" HeaderStyle-Width="100">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CompanyName") %>' Width="80"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("CompanyName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="負責人" SortExpression="CompanyRespMan" HeaderStyle-Width="100">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CompanyRespMan") %>' Width="80"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("CompanyRespMan") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="地址" SortExpression="CompanyAddress" HeaderStyle-Width="250">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CompanyAddress") %>' Width="200"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("CompanyAddress") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="電話" SortExpression="CompanyTel" HeaderStyle-Width="200">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CompanyTel") %>' Width="160"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("CompanyTel") %>'></asp:Label>
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:account_dbsConnectionString %>" DeleteCommand="DELETE FROM [account_Company] WHERE [CompanyNo] = @CompanyNo" InsertCommand="INSERT INTO [account_Company] ([CompanyName], [CompanyRespMan], [CompanyAddress], [CompanyTel]) VALUES (@CompanyName, @CompanyRespMan, @CompanyAddress, @CompanyTel)" SelectCommand="SELECT [CompanyNo], [CompanyName], [CompanyRespMan], [CompanyAddress], [CompanyTel] FROM [account_Company]" UpdateCommand="UPDATE [account_Company] SET [CompanyName] = @CompanyName, [CompanyRespMan] = @CompanyRespMan, [CompanyAddress] = @CompanyAddress, [CompanyTel] = @CompanyTel WHERE [CompanyNo] = @CompanyNo">
        <DeleteParameters>
            <asp:Parameter Name="CompanyNo" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="CompanyRespMan" Type="String" />
            <asp:Parameter Name="CompanyAddress" Type="String" />
            <asp:Parameter Name="CompanyTel" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="CompanyRespMan" Type="String" />
            <asp:Parameter Name="CompanyAddress" Type="String" />
            <asp:Parameter Name="CompanyTel" Type="String" />
            <asp:Parameter Name="CompanyNo" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Added" runat="server" Text="新增" Font-Size="Large" Width="80px" OnClick="Added_Click"/>
    
    <br />
</asp:Content>


