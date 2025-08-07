<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddCity.aspx.cs" Inherits="Admin_AddCity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
         <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="LblAddCity" runat="server" Text="AddCity"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblCityName" runat="server" Text="City Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCityName" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvCityName" runat="server" ControlToValidate="TxtCityName" ErrorMessage="Please Enter City Name" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblTalukaName" runat="server" Text="Taluka Name :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DdlTalukaName" runat="server" Width="150px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvTalukaName" runat="server" ControlToValidate="DdlTalukaName" ErrorMessage="Select Taluka Name" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="CityPincode" runat="server" Text="City Pincode :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCityPincode" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvCityPincode" runat="server" ControlToValidate="TxtCityPincode" ErrorMessage="Please Enter City Pincode" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
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
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click1" ValidationGroup="GrpSubmit" />
                    <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>


    </div>


    
</asp:Content>

