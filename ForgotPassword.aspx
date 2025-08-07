<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="Admin_ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
         <h3>Forgot Password</h3>


    </div>
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="LblUserName" runat="server" Text="User Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtUserName" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="TxtUserName" ErrorMessage="Please Enter User Name" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblMobile" runat="server" Text="Mobile :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtMobile" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="TxtMobile" ErrorMessage="Please Enter Mobile No" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblEmail" runat="server" Text="Email :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtEmail" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Please Enter Email" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:LinkButton ID="LnkBtnSendOtp" runat="server">Send Otp</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblOtp" runat="server" Text="Otp :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtOtp" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="LblMessage" runat="server" ForeColor="#FF0066"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" ValidationGroup="GrpSubmit" />
                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

    <asp:Panel ID="PnlChangePassword" runat="server">
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="LblChangePassword" runat="server" Text="Change Password "></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblNewPassword" runat="server" Text="New Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtNewPassword" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ControlToValidate="TxtNewPassword" ErrorMessage="Please Enter New Password" ForeColor="Red" ValidationGroup="GrpSave"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblConfirmPassword" runat="server" Text="Confirm Password :"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TxtConfirmPassword" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="TxtConfirmPassword" ErrorMessage="Please Enter Confirm Password" ForeColor="Red" ValidationGroup="GrpSave"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >&nbsp;</td>
                <td>
                    <asp:Label ID="LblMessage1" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td >&nbsp;</td>
                <td >
                    <asp:Button ID="BtnSave" runat="server" Text="Save" Width="100px" ValidationGroup="GrpSave" />
                    <asp:Button ID="BtnReset" runat="server" Text="Reset" Width="100px" OnClick="BtnReset_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

    
</asp:Content>

