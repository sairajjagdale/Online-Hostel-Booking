<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="HostelDetails.aspx.cs" Inherits="HostelDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Image ID="ImgHostelExt" runat="server" Height="260px" Width="300px" />
            </td>
            <td>
                <asp:Image ID="ImgHostelInt" runat="server" Height="260px" Width="300px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelId" runat="server" Text="Hostel Id :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelId" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelName" runat="server" Text="Hostel Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelAddress" runat="server" Text="Hostel Address :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelAddress" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelCity" runat="server" Text="Hostel City :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelCity" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelEmail" runat="server" Text="Hostel Email :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelEmail" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelWebsite" runat="server" Text="Hostel Website :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelWebsite" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelPhone" runat="server" Text="Hostel Phone :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelPhone" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelMobile1" runat="server" Text="Hostel Mobile 1:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelMobile1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelMobile2" runat="server" Text="Hostel Mobile 2:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelMobile2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelType" runat="server" Text="Hostel Type :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelType" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelCategory" runat="server" Text="Hostel Category :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelCategory" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelRooms" runat="server" Text="Hostel Rooms :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelRooms" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelImageExt" runat="server" Text="Hostel ImageExt:"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="TxtHostelImageExt" runat="server"></asp:TextBox>
            </td>
            <td ></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelImageInt" runat="server" Text="HostelImageInt"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelImageInt" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelFor" runat="server" Text="Hostel For :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelFor" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelTotalRooms" runat="server" Text="Hostel TotalRooms :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelTotalRooms" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelTotalSeats" runat="server" Text="Hostel Total Seats :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelTotalSeats" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelAvailableSeats" runat="server" Text="Hostel AvailableSeats :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelAvailableSeats" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelFees" runat="server" Text="Hostel Fees:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelFees" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelMessFees" runat="server" Text="Hostel Mess Fees:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelMessFees" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelRatings" runat="server" Text="Hostel Ratings:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelRatings" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelLibrary" runat="server" Text="Hostel Library :"></asp:Label>
            </td>
            <td>
                <asp:Image ID="ImgHostelLibrary" runat="server" Height="20px" Width="20px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelGym" runat="server" Text="Hostel Gym :"></asp:Label>
            </td>
            <td>
                <asp:Image ID="ImgHostelGym" runat="server" Height="20px" Width="20px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelStudy" runat="server" Text="Hostel Study :"></asp:Label>
            </td>
            <td>
                <asp:Image ID="ImgHostelStudy" runat="server" Height="20px" Width="20px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelSwimmingTank" runat="server" Text="Hostel Swimming Tank:"></asp:Label>
            </td>
            <td>
                <asp:Image ID="ImgHostelSwimmingTank" runat="server" Height="20px" Width="20px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelAuditorium" runat="server" Text="HostelAuditorium"></asp:Label>
            </td>
            <td>
                <asp:Image ID="ImgHostelAuditorium" runat="server" Height="20px" Width="20px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelGarden" runat="server" Text="Hostel Garden :"></asp:Label>
            </td>
            <td>
                <asp:Image ID="ImgHostelGarden" runat="server" Height="20px" Width="20px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelSecurity" runat="server" Text="Hostel Security :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtHostelSecurity" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblHostelGuestRoom" runat="server" Text="HostelGuest Room:"></asp:Label>
            </td>
            <td>
                <asp:Image ID="ImgHostelGuestRoom" runat="server" Height="20px" Width="20px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

