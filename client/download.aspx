<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.master" AutoEventWireup="true"
    CodeFile="download.aspx.cs" Inherits="client_download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%" cellpadding="0" cellspacing="2" border="0">
         <tr>
            <td><hr style="background-color:Black; height:0.2em" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label3" runat="server" Text="Download Section" Font-Size="16pt" ForeColor="Maroon"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><hr style="background-color:Black; height:0.2em" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <table width="100%" border="1" cellpadding="0" cellspacing="0" style="border-color:Black">
                            <tr>
                                <th style="width: 20%">
                                    <asp:Label ID="Label4" runat="server" Text="Serial Number" Font-Size="12pt" ForeColor="black"></asp:Label>
                                </th>
                                <th style="width: 60%">
                                    <asp:Label ID="Label5" runat="server" Text="Title" Font-Size="12pt" ForeColor="black"></asp:Label>
                                </th>
                                <th style="width: 20%">
                                    <asp:Label ID="Label6" runat="server" Text="Download Here" Font-Size="12pt" ForeColor="black"></asp:Label>
                                </th>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <center>
                            <table width="100%" border="1" cellpadding="0" cellspacing="0" style="border-color:Black">
                                <tr>
                                    <td style="width: 20%">
                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("srno") %>' Font-Size="12pt" ForeColor="black"></asp:Label>
                                    </td>
                                    <td style="width: 60%">
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("NewsTitle") %>' Font-Size="12pt" ForeColor="black"></asp:Label>
                                    </td>
                                    <td style="width: 20%">
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#Eval("NewsUrl") %>' Font-Size="12pt" ForeColor="#0099FF">Download</asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </ItemTemplate>
                </asp:Repeater>
            </td>
        </tr>
    </table>
</asp:Content>
