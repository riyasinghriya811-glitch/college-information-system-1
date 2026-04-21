<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.master" AutoEventWireup="true"
    CodeFile="facility.aspx.cs" Inherits="client_facility" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table width="80%" cellpadding="0" cellspacing="1" border="0">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label5" runat="server" Text=" FACILITY OF THE  COLLEGE" 
                        Font-Size="18pt" ForeColor="Maroon"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <hr style="background-color: #800000; height: 0.2em" />
                </td>
            </tr>
            <tr>
                <td align="left" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="College Canteen" Font-Size="16pt" ForeColor="Maroon"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <hr style="background-color: #008000; height: 0.2em" />
                </td>
            </tr>
            <tr>
                <td style="width: 45%; color:Black" align="left">
                    The College Canteen is a large spacious area, with a view of greenery all around,
                    and a variety of refreshments and meals available. It tends to be the most popular
                    place on campus, not only for physical refreshment but also for student bonding,
                    discussions and even work on assignments and projects
                </td>
                <td style="width: 55%">
                    <asp:Image ID="Image1" runat="server" BorderColor="Black" BorderStyle="Solid" Height="163px"
                        Width="322px" ImageUrl="~/admin/canteen/canteen3.jpg" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <hr style="background-color: #008000; height: 0.2em" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="left">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Laboratories" Font-Size="16pt" ForeColor="Maroon"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <hr style="background-color: #008000; height: 0.2em" />
                </td>
            </tr>
            <tr>
                <td style="color:Black" align="left">
                    Most of the laboratories are recognised for testing and standardization by the various
                    organization. Through central assistance, the various laboratories of the institute
                    are continuously modernized. In emeging areas, new laboratories of the institute
                    are being established. In addition to practicals and projects of students, the laboratories
                    also cater for industrial testing in diverse fields. Internate facilities at free
                    of cost is available for students & faculty.
                </td>
                <td>
                    <asp:Image ID="Image2" runat="server" BorderColor="Black" BorderStyle="Solid" Height="276px"
                        Width="322px" ImageUrl="~/admin/lab/lab1.JPG" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image4" runat="server" BorderColor="Black" BorderStyle="Solid" Height="276px"
                        Width="322px" ImageUrl="~/admin/lab/lab5.JPG" />
                </td>
                <td>
                    <asp:Image ID="Image5" runat="server" BorderColor="Black" BorderStyle="Solid" Height="276px"
                        Width="322px" ImageUrl="~/admin/lab/lab3.JPG" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <hr style="background-color: #008000; height: 0.2em" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="left">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Library" Font-Size="16pt" ForeColor="Maroon"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <hr style="background-color: #008000; height: 0.2em" />
                </td>
            </tr>
            <tr>
                <td  style="color:Black" align="left">
                    Keeping pace with latest developments of concepts in the world of education, Merchant
                    Polytechnic College has maintained a well equipped central-library with a large
                    array of books, journals and published resources of Indian and foreign authors.
                    A fully qualified Librarian organizes, separate small departmental Libraries to
                    facilitate its B.B.A and B.Ed students.
                </td>
                <td>
                    <asp:Image ID="Image3" runat="server" BorderColor="Black" BorderStyle="Solid" Height="163px"
                        Width="322px" ImageUrl="~/admin/library/lib2.GIF" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <hr style="background-color: #008000; height: 0.2em" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="left">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Hostel" Font-Size="16pt" ForeColor="Maroon"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <hr style="background-color: #008000; height: 0.2em" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="left"  style="color:Black">
                    Being very near to Mehsana & Visnsgar it is very easy to get accommodation for staying
                    in the beautiful, green healthy surroundings or these places. In these two towns
                    private hostels that are affordable and have very good facilities for food and safety
                    are available for both girls and boys. In Basna Campus No. of Two Blocks of Hostel
                    building is completed for Boys are as under.
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image6" runat="server" BorderColor="Black" BorderStyle="Solid" Height="163px"
                        Width="322px" ImageUrl="~/admin/hostel/Block1.jpg" />
                </td>
                <td>
                    <asp:Image ID="Image7" runat="server" BorderColor="Black" BorderStyle="Solid" Height="163px"
                        Width="322px" ImageUrl="~/admin/hostel/Block1.jpg" />
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
