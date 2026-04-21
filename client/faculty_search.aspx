<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faculty_search.aspx.cs" Inherits="client_faculty_search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <center>
        <table width="100%" cellpadding="0" cellspacing="1" border="0">
            <tr>
                <td colspan="3" style="height: 60px; background-color: #4E387E">
                    <asp:Label ID="Label1" runat="server" Text="Faculty Search Information" Font-Size="18pt"
                        ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 10%">
                </td>
                <td style="width: 85%">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="background-color: #4E387E">
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td colspan="3">
                                            <asp:Label ID="Label3" runat="server" Text="Enter Detail Here" Font-Size="18pt" ForeColor="White"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <hr style="background-color: White; height: 1em" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="height: 1px">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" align="right">
                                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/client/home.aspx"
                                                ForeColor="White">Home</asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 40%">
                                            <asp:Label ID="Label2" runat="server" Text="Enter Name " Font-Size="16pt" ForeColor="White"></asp:Label>
                                        </td>
                                        <td style="width: 05%">
                                            <asp:Label ID="Label4" runat="server" Text=":" Font-Size="16pt" ForeColor="White"></asp:Label>
                                        </td>
                                        <td style="width: 55%" align="left">
                                            <asp:TextBox ID="TextBox1" runat="server" Width="247px" Height="31px" 
                                                Font-Bold="True" Font-Size="16pt" ForeColor="#006600"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="height: 1px">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <asp:Button ID="Button1" runat="server" Text="Click Here" Height="36px" Width="123px"
                                                OnClick="Button1_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" align="left">
                                            <asp:Label ID="Label5" runat="server" Text="Your Search String" Font-Size="16pt"
                                                ForeColor="White"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label15"
                                                    runat="server" Text=":" ForeColor="White" Font-Size="16pt"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label
                                                        ID="Label7" runat="server" Text="" Font-Size="16pt" ForeColor="White"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #4E387E">
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <table width="90%">
                                            <tr>
                                                <td style="width: 30%">
                                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("imageurl") %>' Height="200"
                                                        Width="160" />
                                                </td>
                                                <td style="width: 70%">
                                                    <table width="80%">
                                                        <tr>
                                                            <td align="left">
                                                                <asp:Label ID="Label9" runat="server" Text="Name" ForeColor="White" Font-Size="16pt"></asp:Label>
                                                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                                <asp:Label ID="Label17" runat="server" Text=":" ForeColor="White" Font-Size="16pt"></asp:Label>&nbsp&nbsp
                                                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("fname") %>' ForeColor="White"
                                                                    Font-Size="16pt"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left">
                                                                <asp:Label ID="Label11" runat="server" Text="Qualification" ForeColor="White" Font-Size="16pt"></asp:Label>
                                                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="Label18"
                                                                    runat="server" Text=":" ForeColor="White" Font-Size="16pt"></asp:Label>&nbsp&nbsp<asp:Label
                                                                        ID="Label4" runat="server" Text='<%#Eval("qualification") %>' ForeColor="White"
                                                                        Font-Size="16pt"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left">
                                                                <asp:Label ID="Label12" runat="server" Text="Designation" ForeColor="White" Font-Size="16pt"></asp:Label>
                                                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="Label15"
                                                                    runat="server" Text=":" ForeColor="White" Font-Size="16pt"></asp:Label>&nbsp&nbsp
                                                                <asp:Label ID="Label6" runat="server" Text='<%#Eval("desg") %>' ForeColor="White"
                                                                    Font-Size="16pt"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left">
                                                                <asp:Label ID="Label13" runat="server" Text="Work Experiance" ForeColor="White" Font-Size="16pt"></asp:Label>
                                                                &nbsp&nbsp&nbsp<asp:Label ID="Label16" runat="server" Text=":" ForeColor="White"
                                                                    Font-Size="16pt"></asp:Label>&nbsp&nbsp
                                                                <asp:Label ID="Label8" runat="server" Text='<%#Eval("exp") %>' ForeColor="White"
                                                                    Font-Size="16pt"> </asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left">
                                                                <asp:Label ID="Label14" runat="server" Text="Area Of Interest" ForeColor="White"
                                                                    Font-Size="16pt"></asp:Label>
                                                                &nbsp&nbsp&nbsp&nbsp<asp:Label ID="Label19" runat="server" Text=":" ForeColor="White"
                                                                    Font-Size="16pt"></asp:Label>&nbsp&nbsp
                                                                <asp:Label ID="Label10" runat="server" Text='<%#Eval("interest") %>' ForeColor="White"
                                                                    Font-Size="16pt"></asp:Label>
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
                    </table>
                </td>
                <td style="width: 05%">
                </td>
            </tr>
        </table>
    </center>
    </form>
</body>
</html>
