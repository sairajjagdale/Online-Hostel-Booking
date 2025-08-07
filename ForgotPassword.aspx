<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblMobile" runat="server" Text="Mobile :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtMobile" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblEmail" runat="server" Text="Email :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtEmail" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:LinkButton ID="LnkBtnSendOtp" runat="server" OnClick="LnkBtnSendOtp_Click">Send OTP</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblOtp" runat="server" Text="Otp :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtOtp" runat="server" Width="200px"></asp:TextBox>
                <asp:Label ID="LblOtpValue" runat="server" ForeColor="Red"></asp:Label>
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
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" />
                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

    <asp:Panel ID="PnlChangePassword" runat="server" Visible="False">
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
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblConfirmPassword" runat="server" Text="Confirm Password :"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TxtConfirmPassword" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td ></td>
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
                    <asp:Button ID="BtnSave" runat="server" Text="Save" Width="100px" />
                    <asp:Button ID="BtnReset" runat="server" Text="Reset" Width="100px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>

