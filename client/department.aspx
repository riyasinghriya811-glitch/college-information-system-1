<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.master" AutoEventWireup="true"
    CodeFile="department.aspx.cs" Inherits="client_department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="  Department" Font-Size="15pt" ForeColor="#0099FF"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <hr style="background-color: #0099FF; height: 0.2em" />
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%">
                    <tr>
                        <td style="width: 2%">
                        </td>
                        <td style="width: 98%" align="left">
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1" Font-Size="14pt">Information Technology</asp:LinkButton><br />
                            <br />
                            <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="14pt" OnClick="LinkButton2_Click">Computer Engineering</asp:LinkButton><br />
                            <br />
                            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Font-Size="14pt">Mechanical Engineering</asp:LinkButton><br />
                            <br />
                            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" Font-Size="14pt">Electrical Engineering</asp:LinkButton><br />
                            <br />
                            <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" Font-Size="14pt">Electronics & Communication</asp:LinkButton><br />
                            <br />
                            <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click" Font-Size="14pt">General Department</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <hr style="background-color: #0099FF; height: 0.2em" />
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label1" runat="server" Text="" Font-Size="15pt" ForeColor="#0099FF"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" BorderColor="#999999"
                    BorderWidth="1px" CellPadding="4" ForeColor="Black" BorderStyle="Solid" CellSpacing="2"
                    GridLines="Both">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <HeaderTemplate>
                        <center>
                            <table border="0" cellpadding="0" cellspacing="2">
                                <tr align="left">
                                <td style="width: 02%">&nbsp;
                                    </td>
                                    <th style="width: 48%" align="left">
                                        <asp:Label ID="Label5" runat="server" Text="Faculty Name" Font-Size="14pt"></asp:Label>
                                    </th>
                                    <th style="width: 50%" align="left">
                                        <asp:Label ID="Label6" runat="server" Text="Designation" Font-Size="14pt"></asp:Label>
                                    </th>
                                </tr>
                            </table>
                        </center>
                    </HeaderTemplate>
                    <ItemStyle BackColor="White" />
                    <ItemTemplate>
                        <center>
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr align="left">
                                    <td style="width: 02%">&nbsp;
                                    </td>
                                    <td style="width: 48%">
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("fname") %>' Font-Size="14pt"
                                            ForeColor="Black"></asp:Label>
                                    </td>
                                    <td style="width: 50%">
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("desg") %>' Font-Size="14pt"
                                            ForeColor="Black"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:LinkButton ID="LinkButton8" runat="server" PostBackUrl="~/client/faculty.aspx">More Info</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
