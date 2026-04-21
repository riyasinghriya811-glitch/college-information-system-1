<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.master" AutoEventWireup="true"
    CodeFile="cource.aspx.cs" Inherits="client_cource" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3">
                    <p style="font-size: 18pt; color: Maroon">
                        Cources</p>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                        <center>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr style="background-color: #C34A2C">
                                    <th style="font-size: 14pt; color: White">
                                        Cource Name
                                    </th>
                                    <th style="font-size: 14pt; color: White">
                                        Intake
                                    </th>
                                    <th style="font-size: 14pt; color: White">
                                        Course Code
                                    </th>
                                </tr>
                            </table>
                            </center>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <center>
                            <table>
                                <td align="left" style="width: 35%; font-size: 12pt; color: #827839">
                                    <%#Eval("c_name") %>
                                </td>
                                <td style="width: 35%; font-size: 12pt; color: #827839">
                                    <%#Eval("c_intake") %>
                                </td>
                                <td style="width: 30%; font-size: 12pt; color: #827839">
                                    <%#Eval("c_code") %>
                                </td>
                            </table>
                            </center>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        SelectCommand="SELECT [c_name], [c_intake], [c_code] FROM [course]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
