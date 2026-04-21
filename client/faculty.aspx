<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.master" AutoEventWireup="true"
    CodeFile="faculty.aspx.cs" Inherits="client_faculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table width="90%" cellpadding="0" cellspacing="0" border="0">
            <tr>
                <td>
                    <hr style="background-color: Maroon; height: 0.2em" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Faculty Profile" Font-Size="18pt" ForeColor="Maroon"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <hr style="background-color: Maroon; height: 0.2em" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/client/faculty_search.aspx">Search_Here</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <table width="60%">
                                <tr style="">
                                    <td style="width: 30%">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("imageurl") %>' Height="210"
                                            Width="160" BorderColor="Black" BorderWidth="1px" />
                                    </td>
                                    <td style="width: 70%">
                                        <table width="100%" border="0">
                                            <tr>
                                                <td style="width: 35; height: 10px" align="left">
                                                    <asp:Label ID="Label1" runat="server" Text="Name " ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 05%" align="left">
                                                    <asp:Label ID="Label2" runat="server" Text=":" ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 60%" align="left">
                                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("fname") %>' ForeColor="Black"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 0.5px">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 35" align="left">
                                                    <asp:Label ID="Label4" runat="server" Text="Qualification " ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 05%" align="left">
                                                    <asp:Label ID="Label6" runat="server" Text=":" ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 60%" align="left">
                                                    <asp:Label ID="Label7" runat="server" Text='<%#Eval("qualification") %>' ForeColor="Black"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 0.5px">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 35" align="left">
                                                    <asp:Label ID="Label8" runat="server" Text="Designation" ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 05%" align="left">
                                                    <asp:Label ID="Label9" runat="server" Text=":" ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 60%" align="left">
                                                    <asp:Label ID="Label10" runat="server" Text='<%#Eval("desg") %>' ForeColor="Black"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 0.5px">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 35" align="left">
                                                    <asp:Label ID="Label11" runat="server" Text="Experiance" ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 05%" align="left">
                                                    <asp:Label ID="Label12" runat="server" Text=":" ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 60%" align="left">
                                                    <asp:Label ID="Label13" runat="server" Text='<%#Eval("exp") %>' ForeColor="Black"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 0.5px">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 35" align="left">
                                                    <asp:Label ID="Label14" runat="server" Text="Area of Interest" ForeColor="Black"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 05%" align="left">
                                                    <asp:Label ID="Label15" runat="server" Text=":" ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 60%" align="left">
                                                    <asp:Label ID="Label16" runat="server" Text='<%#Eval("interest") %>' ForeColor="Black"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <tr>
                                        <td colspan="4">
                                            <hr style="background-color: black; height: 0.2em" />
                                        </td>
                                    </tr>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:Repeater>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <table width="60%">
                                <tr style="">
                                    <td style="width: 30%">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("imageurl") %>' Height="210"
                                            Width="160" BorderColor="Black" BorderWidth="1px" />
                                    </td>
                                    <td style="width: 70%">
                                        <table width="100%" border="0">
                                            <tr>
                                                <td style="width: 35; height: 10px" align="left">
                                                    <asp:Label ID="Label1" runat="server" Text="Name " ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 05%" align="left">
                                                    <asp:Label ID="Label2" runat="server" Text=":" ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 60%" align="left">
                                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("fname") %>' ForeColor="Black"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 0.5px">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 35" align="left">
                                                    <asp:Label ID="Label4" runat="server" Text="Qualification " ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 05%" align="left">
                                                    <asp:Label ID="Label6" runat="server" Text=":" ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 60%" align="left">
                                                    <asp:Label ID="Label7" runat="server" Text='<%#Eval("qualification") %>' ForeColor="Black"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 0.5px">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 35" align="left">
                                                    <asp:Label ID="Label8" runat="server" Text="Designation" ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 05%" align="left">
                                                    <asp:Label ID="Label9" runat="server" Text=":" ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 60%" align="left">
                                                    <asp:Label ID="Label10" runat="server" Text='<%#Eval("desg") %>' ForeColor="Black"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 0.5px">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 35" align="left">
                                                    <asp:Label ID="Label11" runat="server" Text="Experiance" ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 05%" align="left">
                                                    <asp:Label ID="Label12" runat="server" Text=":" ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 60%" align="left">
                                                    <asp:Label ID="Label13" runat="server" Text='<%#Eval("exp") %>' ForeColor="Black"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 0.5px">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 35" align="left">
                                                    <asp:Label ID="Label14" runat="server" Text="Area of Interest" ForeColor="Black"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 05%" align="left">
                                                    <asp:Label ID="Label15" runat="server" Text=":" ForeColor="Black" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td style="width: 60%" align="left">
                                                    <asp:Label ID="Label16" runat="server" Text='<%#Eval("interest") %>' ForeColor="Black"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:Repeater>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="pagination">
                        <ul>
                            <li>
                                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">1</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">2</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">3</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">4</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">5</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">6</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton9_Click">7</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click">8</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton11" runat="server" OnClick="LinkButton11_Click">9</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton12" runat="server" OnClick="LinkButton12_Click">10</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton13" runat="server" OnClick="LinkButton13_Click">11</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton14" runat="server" OnClick="LinkButton14_Click">12</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">13</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton15" runat="server" OnClick="LinkButton15_Click">14</asp:LinkButton></li>
                        </ul>
                    </div>
                </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
