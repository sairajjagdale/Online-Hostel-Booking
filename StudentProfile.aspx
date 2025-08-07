<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="StudentProfile.aspx.cs" Inherits="StudentProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Image ID="ImgStudentPhoto" runat="server" Width="200px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="LblPhotoPath" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:LinkButton ID="LnkbtnChangePhoto" runat="server">Change Photo</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:FileUpload ID="FuStudentPhoto" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td ></td>
                <td >
                    <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td ></td>
            </tr>
            <tr>
                <td >&nbsp;</td>
                <td >
                    <asp:Button ID="BtnUploadPhoto" runat="server" Text="Upload Photo" />
                </td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td >&nbsp;</td>
                <td >&nbsp;</td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="LblStudentFullName" runat="server" Text="Student FullName :"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TxtStudentFullName" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="LblAddress" runat="server" Text="Student Address :"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TxtStudentAddress" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="LblCity" runat="server" Text="City :"></asp:Label>
                </td>
                <td >
                    <asp:DropDownList ID="DdlCity" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="LblPin" runat="server" Text="Pin :"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TxtPin" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="LblMobile" runat="server" Text="Mobile :"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TxtMobile" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="LblEmail" runat="server" Text="Email :"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TxtEmail" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="LblBirthDate" runat="server" Text="Birth Date :"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TxtBirthDate" runat="server" Width="200px"></asp:TextBox>
                    <asp:ImageButton ID="ImgCal" runat="server" ImageUrl="~/Images/c1.jpg" OnClick="ImgCal_Click" Width="25px" />
                    <asp:Calendar ID="CalBirthDate" runat="server" Visible="False"></asp:Calendar>
&nbsp;</td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td >&nbsp;</td>
                <td >
                    <asp:LinkButton ID="LnkbtnChangePassword" runat="server">Change Password</asp:LinkButton>
                </td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td >&nbsp;</td>
                <td >
                    <asp:Label ID="LblMessage1" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td >&nbsp;</td>
                <td >
                    <asp:Button ID="BtnUpdate" runat="server" Text="Update" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnCancel" runat="server" Text="Cancel" />
                </td>
                <td >&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

