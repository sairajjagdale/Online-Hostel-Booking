<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
        <h3>Admin Login</h3>
        <table style="width: 50%; margin:auto;">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Image ID="ImgAvatar" runat="server" Height="50px" Width="50px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblUserName" runat="server" Text="UserName :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtUserName" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="TxtUserName" ErrorMessage="Please Enter User Name" ForeColor="Red" ValidationGroup="GrpLogin"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblPassword" runat="server" Text="Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Please Enter Password" ForeColor="Red" ValidationGroup="GrpLogin"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="BtnLogin" runat="server" Text="Login" ValidationGroup="GrpLogin" />
                    <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

