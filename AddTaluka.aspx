<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddTaluka.aspx.cs" Inherits="Admin_AddTaluka" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="LblAddTaluka" runat="server" Text="AddTaluka"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblTalukaName" runat="server" Text="Taluka Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtTalukaName" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvTalukaName" runat="server" ControlToValidate="TxtTalukaName" ErrorMessage="Please Enter Taluka Name" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblDistrictName" runat="server" Text="District Name :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DdlDistrictName" runat="server" Width="150px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvDistrictName" runat="server" ControlToValidate="DdlDistrictName" ErrorMessage="Please Select City Name" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblMessage" runat="server" ForeColor="#CC0000"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
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

