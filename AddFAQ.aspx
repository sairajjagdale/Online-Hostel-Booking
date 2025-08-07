<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddFAQ.aspx.cs" Inherits="Admin_AddFAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="LblAddFAQ" runat="server" Text="AddFAQ"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblFAQQuestion" runat="server" Text=" FAQQuestion :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtFAQQuestion" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvFAQQuestion" runat="server" ControlToValidate="TxtFAQQuestion" ErrorMessage="Please Enter Question" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblAnswer" runat="server" Text="Answer :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtAnswer" runat="server" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvAnswer" runat="server" ControlToValidate="TxtAnswer" ErrorMessage="Please Write Answer" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" ValidationGroup="GrpSubmit" />
                    <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

