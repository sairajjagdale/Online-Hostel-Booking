<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="LblAdminChangePassword" runat="server" Text="Change Password "></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblOldPassword" runat="server" Text="Old Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtOldPassword" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvOldPassword" runat="server" ControlToValidate="TxtOldPassword" ErrorMessage="Please Enter Old Password" ForeColor="Red" ValidationGroup="GrpReset"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblNewPassword" runat="server" Text="New Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtNewPassword" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ControlToValidate="TxtNewPassword" ErrorMessage="Please Enter New Password" ForeColor="Red" ValidationGroup="GrpReset"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblConfirmPassword" runat="server" Text="Confirm Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtConfirmPassword" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="TxtConfirmPassword" ErrorMessage="Please Enter Confirm Password" ForeColor="Red" ValidationGroup="GrpReset"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td >
                    <asp:Button ID="BtnReset" runat="server" Text="Reset" />
                </td>
                <td></td>
            </tr>
        </table>

    </div>
</asp:Content>

