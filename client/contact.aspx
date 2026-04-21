<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.master" AutoEventWireup="true"
    CodeFile="contact.aspx.cs" Inherits="client_contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%" cellpadding="0" cellspacing="4" >
        <tr>
                <td align="center" colspan="4" style="background-color: #383838; border-color: black; border-style: inset;
                    height: 30px">
                    <font color="white">Contact us</font>
                </td>
            </tr>
        <tr>
            <td style="width: 10%">
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Your Name " ForeColor="Gray"></asp:Label>
            </td>
            <td style="width: 5%">
                :
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="You can't leave this empty."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 10%">
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Address" ForeColor="Gray"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox2" runat="server" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="You can't leave this empty."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 10%">
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="City" ForeColor="Gray"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox3" runat="server" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="You can't leave this empty."></asp:RequiredFieldValidator>
            </td>
        </tr>
          <tr>
            <td style="width: 10%">
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="State" ForeColor="Gray"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox8" runat="server" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="You can't leave this empty."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 10%">
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Country" ForeColor="Gray"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox4" runat="server" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="You can't leave this empty."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 10%">
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Phono no" ForeColor="Gray"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox5" runat="server" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="You can't leave this empty."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 10%">
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Email Address" ForeColor="Gray"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox6" runat="server" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="You can't leave this empty."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 10%">
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Remarks" ForeColor="Gray"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox7" runat="server" Width="220px" Height="78px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button
                    ID="Button1" runat="server" Text="Submit" Width="92px" 
                    onclick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Reset" Width="92px" 
                    onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font
                    color="#333333">Merchant Polytechnic College</font>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font
                    color="#333333">Mahesana-Visnagar Highway</font>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <font color="#333333">District : Mahesana</font>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font
                    color="#333333">Email-id : mpcbasna@rediffmail.com</font>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#333333">Phone_no
                    : (02762) 275777</font>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#333333">Fax_no
                    : (02762) 275777</font>
            </td>
        </tr>
    </table>
</asp:Content>
