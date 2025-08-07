<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddFee.aspx.cs" Inherits="Admin_AddFee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="LblHostelFeeId" runat="server" Text="Hostel Fee Id :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtHostelFeeId" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvHostelFeeId" runat="server" ControlToValidate="TxtHostelFeeId" ErrorMessage="Please Enter Hostel Fee Id" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblHostelCategory" runat="server" Text="Hostel Category :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DdlHostelCategory" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvHostelCategory" runat="server" ControlToValidate="DdlHostelCategory" ErrorMessage="Please Select Hostel Category" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblHostelFee" runat="server" Text="Hostel Fee :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtHostelFee" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvHostelFee" runat="server" ControlToValidate="TxtHostelFee" ErrorMessage="Please Enter Hostel Fee" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblHostelMessFee" runat="server" Text="Hostel Mess Fee :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtHostelMessFee" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvHostelMessFee" runat="server" ControlToValidate="TxtHostelMessFee" ErrorMessage="Please Enter Hostel Mess Fee" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
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
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" ValidationGroup="GrpSubmit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

