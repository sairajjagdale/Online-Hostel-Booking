<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminRegistration.aspx.cs" Inherits="Admin_AdminRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h3>Admin Registration</h3>
        <table style="width:100%; margin:auto;">
            <tr>
                <td>
                    <asp:Label ID="LblAdminFullName" runat="server" Text="FullName :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtFullName" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="TxtFullName" ErrorMessage="Please Enter Full Name" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblAdminName" runat="server" Text="Admin Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtAdminName" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvAdminName" runat="server" ControlToValidate="TxtAdminName" ErrorMessage="Please Select Name" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblAdminPassword" runat="server" Text="Admin Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtAdminPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvAdminPassword" runat="server" ControlToValidate="TxtAdminPassword" ErrorMessage="Please Enter Password" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblConfirmPassword" runat="server" Text="Confirm Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="TxtConfirmPassword" ErrorMessage="Please Enter Confirm Password" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblAdminMobile" runat="server" Text="Admin Mobile :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtAdminMobile" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvAdminMobile" runat="server" ControlToValidate="TxtAdminMobile" ErrorMessage="Please Enter mobile no" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblAdmin_Email" runat="server" Text="Admin Email :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtAdminEmail" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvAdminEmail" runat="server" ControlToValidate="TxtAdminEmail" ErrorMessage="Please Enter Email" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" ValidationGroup="GrpSubmit" OnClick="BtnSubmit_Click" />
                    <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

