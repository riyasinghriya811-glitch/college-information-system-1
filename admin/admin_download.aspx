<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true"
    CodeFile="admin_download.aspx.cs" Inherits="admin_admin_download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table width="100%" cellpadding="0" cellspacing="7" border="0">
             <tr>
                <td colspan="3">
                    <p style="color: #5E5A80; font-size:14pt">
                       Download Information</p>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <hr style="background-color: #363258; height: 0.2em">
                </td>
            </tr>
            <tr>
                <td style="width: 35%">
                    <asp:Label ID="Label5" runat="server" Text="Enter ID"></asp:Label>
                </td>
                <td style="width: 5%">
                    :
                </td>
                <td align="left" style="width: 60%">
                    <asp:TextBox ID="TextBox4" runat="server" Width="210px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 35%">
                    <asp:Label ID="Label2" runat="server" Text="Serial Number"></asp:Label>
                </td>
                <td style="width: 5%">
                    :
                </td>
                <td align="left" style="width: 60%">
                    <asp:TextBox ID="TextBox1" runat="server" Width="210px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 35%">
                    <asp:Label ID="Label3" runat="server" Text="News Title"></asp:Label>
                </td>
                <td style="width: 5%">
                    :
                </td>
                <td align="left" style="width: 60%">
                    <asp:TextBox ID="TextBox2" runat="server" Width="210px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 35%">
                    <asp:Label ID="Label4" runat="server" Text="Download Here"></asp:Label>
                </td>
                <td style="width: 5%">
                    :
                </td>
                <td align="left" style="width: 60%">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <hr style="background-color: #363258; height: 0.2em">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="Store" Width="81px" 
                        onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <hr style="background-color: #363258; height: 0.2em">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        ForeColor="Black" GridLines="Horizontal" AllowPaging="True" 
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="srno" HeaderText="srno" SortExpression="srno" />
                            <asp:BoundField DataField="NewsTitle" HeaderText="NewsTitle" 
                                SortExpression="NewsTitle" />
                            <asp:BoundField DataField="NewsUrl" HeaderText="NewsUrl" 
                                SortExpression="NewsUrl" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [srno], [NewsTitle], [NewsUrl] FROM [NewsEvents]">
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
