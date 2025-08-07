<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="StudentRegistration.aspx.cs" Inherits="StudentRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <h3>Student Registration<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        </h3>
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Label ID="LblRegistrationNo" runat="server" Text="Registration No :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtRegistrationNo" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvRegisterationNo" runat="server" ControlToValidate="TxtRegistrationNo" ErrorMessage="Please Enter Registeration no" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblUserFullName" runat="server" Text="User Full Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtUserFullName" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="frvUserFullName" runat="server" ControlToValidate="TxtUserFullName" ErrorMessage="Please Enter User Full Name" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
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
                    <asp:Label ID="LblUserPassword" runat="server" Text="User Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtUserPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvUserPassword" runat="server" ControlToValidate="TxtUserPassword" ErrorMessage="Please Enter User Password" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblConfirmPassword" runat="server" Text="Confirm Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CvConfirmPassword" runat="server" ControlToCompare="TxtUserPassword" ControlToValidate="TxtConfirmPassword" ErrorMessage="Mismatch Password" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblUserAddress" runat="server" Text="User  Address :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtUserAddress" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvUserAddress" runat="server" ControlToValidate="TxtUserAddress" ErrorMessage="Please Enter user Address" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblCountry" runat="server" Text="Country :"></asp:Label>
                </td>
                <td>
                    <asp:UpdatePanel ID="UpnDdlCountry" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="DdlCountry" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="DdlCountry_SelectedIndexChanged">
                            </asp:DropDownList>
                        </ContentTemplate>
                        <Triggers>

                            <asp:AsyncPostBackTrigger ControlID="DdlCountry" />
                        </Triggers>


                    </asp:UpdatePanel>


                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ControlToValidate="DdlCountry" ErrorMessage="Please Select Country " ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblState" runat="server" Text="State :"></asp:Label>
                </td>
                <td>
                    <asp:UpdatePanel ID="UpnDdlState" runat="server">

                        <ContentTemplate>
                            <asp:DropDownList ID="DdlState" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="DdlState_SelectedIndexChanged">
                            </asp:DropDownList>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="DdlState" />
                        </Triggers>


                    </asp:UpdatePanel>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="DdlState" ErrorMessage="Please Select State" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblDistrict" runat="server" Text="District :"></asp:Label>
                </td>
                <td>
                    <asp:UpdatePanel ID="UpnDdlDistrict" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="DdlDistrict" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="DdlDistrict_SelectedIndexChanged">
                            </asp:DropDownList>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="DdlDistrict" />
                        </Triggers>
                    </asp:UpdatePanel>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvDistrict" runat="server" ControlToValidate="DdlTaluka" ErrorMessage="Please Select District" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblTaluka" runat="server" Text="Taluka :"></asp:Label>
                </td>
                <td>
                    <asp:UpdatePanel ID="UpnDdltaluka" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="DdlTaluka" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="DdlTaluka_SelectedIndexChanged">
                            </asp:DropDownList>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="DdlTaluka" />
                        </Triggers>
                    </asp:UpdatePanel>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvTaluka" runat="server" ControlToValidate="DdlTaluka" ErrorMessage="Please Select Taluka" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblCity" runat="server" Text="City :"></asp:Label>
                </td>
                <td>
                    <asp:UpdatePanel ID="UpnDdlCity" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="DdlCity" runat="server" Width="200px" OnSelectedIndexChanged="DdlCity_SelectedIndexChanged" AutoPostBack="True">
                            </asp:DropDownList>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="DdlCity" />
                        </Triggers>
                    </asp:UpdatePanel>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="DdlCity" ErrorMessage="Please Select City" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblPin" runat="server" Text="pin :"></asp:Label>
                </td>
                <td>
                    <asp:UpdatePanel ID="UpnlTxtPin" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="TxtPin" runat="server" Width="200px" OnTextChanged="TxtPin_TextChanged"></asp:TextBox>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="TxtPin" />
                        </Triggers>
                    </asp:UpdatePanel>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvPin" runat="server" ControlToValidate="TxtPin" ErrorMessage="Please enter pin" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
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
                    <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="TxtMobile" ErrorMessage="Please enter mobile no" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;
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
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Please enter email" ForeColor="Red" ValidationGroup="GrpSubmit"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RefEmail" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblBirthDate" runat="server" Text="Birth Date :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtBirthDate" runat="server" Width="200px"></asp:TextBox>
                    <asp:ImageButton ID="ImgBtnCal" runat="server" Width="25px" OnClick="ImgBtnCal_Click" />
                    <asp:Calendar ID="CalBirthDate" runat="server" Visible="False" OnSelectionChanged="CalBirthDate_SelectionChanged"></asp:Calendar>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblGender" runat="server" Text="Gender :"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="RbtnMale" runat="server" Checked="True" GroupName="Grpgender" Text="Male" />
                    <asp:RadioButton ID="RbtnFemale" runat="server" GroupName="Grpgender" Text="Female" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblImage" runat="server" Text="Image"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FuImage" runat="server" Width="200px" />
                </td>
                <td>&nbsp;</td>
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
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" Width="100px" OnClick="BtnSubmit_Click" ValidationGroup="GrpSubmit" />
                    <asp:Button ID="BtnCancel" runat="server" Text="Cancel" Width="100px" OnClick="BtnCancel_Click" Style="height: 29px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

