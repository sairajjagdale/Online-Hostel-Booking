<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddState.aspx.cs" Inherits="Admin_AddState" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="LblAddState" runat="server" Text="Add State"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblStateName" runat="server" Text="State Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtStateName" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvStateName" runat="server" ControlToValidate="TxtStateName" ErrorMessage="Please Enter State Name" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblCountryName" runat="server" Text="Country Name :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DdlCountryName" runat="server" Width="200px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvCountryName" runat="server" ControlToValidate="DdlCountryName" ErrorMessage="Please Select Country Name" ForeColor="Red" InitialValue="0" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" Width="100px" OnClick="BtnSubmit_Click" ValidationGroup="GrpSubmit" />
                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" Width="100px" OnClick="BtnCancel_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

