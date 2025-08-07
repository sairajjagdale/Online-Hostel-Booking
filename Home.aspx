<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="SliderStyle/js-image-slider.css" rel="stylesheet" />
    <script src="SliderStyle/js-image-slider.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>

   </div>
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>

        <div class="addrotator">
            <div id="sliderFrame">
                <div id="slider">
                    <img src="images/slide1.jpg" />
                    <img src="images/slide2.jpg" alt="#" />
                    <img src="images/slide3.jpg" />
                    <img src="images/slide4.jpg" />
                    <img src="images/slide5.jpg" alt="#" />
                    <img src="images/slide6.jpg" />
                    <img src="images/slide7.jpg" />
                </div>
                <div id="htmlcaption" style="display: none">
                    <em>HTML</em> caption. Link To <a href="#">www.E_ColleageHostel.com</a>
                </div>
            </div>
        </div>
    </div>
    <div class="hostels">
        <fieldset>
            <legend>Girls Hostels<asp:DataList ID="DtlstGirlsHostel" runat="server" RepeatColumns="2">
                <ItemTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td>
                                <asp:Label ID="LblHostelName" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="ImgHostelImage" runat="server" Height="260px" Width="400px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LblHostelAddress" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LblHostelEmail" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LblHostelMobile" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImgbtnDetails" runat="server" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                </asp:DataList>
            </legend>
            
        </fieldset>
    </div>
</asp:Content>

