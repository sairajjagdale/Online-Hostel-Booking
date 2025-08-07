<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddGallery.aspx.cs" Inherits="Admin_AddGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="LblAddGallery" runat="server" Text="AddGallery"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblGalleryName" runat="server" Text="Gallery Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtGalleryName" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvGalleryName" runat="server" ControlToValidate="TxtGalleryName" ErrorMessage="Please Enter Gallery Name" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblGalleryDetails" runat="server" Text="Gallery Details :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtGalleryDetails" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvGalleryDetails" runat="server" ControlToValidate="TxtGalleryDetails" ErrorMessage="Please Enter Gallery Details" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblGalleryImage" runat="server" Text="Gallery Image :"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FuGalleryImage" runat="server" Width="200px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="LblGalleryShow" runat="server" Text="Gallery show :"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:CheckBox ID="ChkGalleryShow" runat="server" />
                </td>
                <td ></td>
            </tr>
            <tr>
                <td >&nbsp;</td>
                <td >
                    <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td ></td>
                <td>
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" ValidationGroup="GrpSubmit" />
                    <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
                </td>
                <td ></td>
            </tr>
        </table>

    </div>
</asp:Content>

