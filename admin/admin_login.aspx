<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true"
    CodeFile="admin_login.aspx.cs" Inherits="admin_admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table width="100%" cellpadding="0" cellspacing="7" border="0" style="margin: 12px">
            <tr>
                <td colspan="3">
                    <p style="color: #5E5A80; font-size:14pt">
                        Admin Login Information</p>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <hr style="color: #363258">
                </td>
            </tr>
            <tr>
                <td style="width: 35%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Enter ID
                </td>
                <td style="width: 5%">
                    :
                </td>
                <td align="left" style="width: 60%">
                    <asp:TextBox ID="TextBox3" runat="server" Width="210px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 35%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    UserName
                </td>
                <td style="width: 5%">
                    :
                </td>
                <td align="left" style="width: 60%">
                    <asp:TextBox ID="TextBox1" runat="server" Width="210px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="Enter Login ID" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 35%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Password
                </td>
                <td style="width: 5%">
                    :
                </td>
                <td align="left" style="width: 60%">
                    <asp:TextBox ID="TextBox2" runat="server" Width="210px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter  Password"
                        ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <hr style="color: #363258">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="Login" Width="135px" Height="29px"
                        OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" Width="116px" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <hr style="color: #363258">
                </td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" 
                        BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="logid" 
                        DataSourceID="SqlDataSource1" GridLines="Horizontal">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                ShowSelectButton="True" />
                            <asp:BoundField DataField="logid" HeaderText="logid" InsertVisible="False" 
                                ReadOnly="True" SortExpression="logid" />
                            <asp:BoundField DataField="login_id" HeaderText="login_id" 
                                SortExpression="login_id" />
                            <asp:BoundField DataField="login_pwd" HeaderText="login_pwd" 
                                SortExpression="login_pwd" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        DeleteCommand="DELETE FROM [login] WHERE [logid] = @logid" 
                        InsertCommand="INSERT INTO [login] ([login_id], [login_pwd]) VALUES (@login_id, @login_pwd)" 
                        SelectCommand="SELECT * FROM [login]" 
                        UpdateCommand="UPDATE [login] SET [login_id] = @login_id, [login_pwd] = @login_pwd WHERE [logid] = @logid">
                        <DeleteParameters>
                            <asp:Parameter Name="logid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="login_id" Type="String" />
                            <asp:Parameter Name="login_pwd" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="login_id" Type="String" />
                            <asp:Parameter Name="login_pwd" Type="String" />
                            <asp:Parameter Name="logid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
