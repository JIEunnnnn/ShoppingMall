<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Top.aspx.cs" Inherits="ShoppingMall.Top" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table border="1">
        <tr>
            <td>
                <asp:Image runat="server" Height="428px" Width="419px" ImageUrl="~/Top1.jpg"></asp:Image>
            </td>
            <td>
                <asp:Image runat="server" Height="428px" Width="419px" ImageUrl="~/Top2.jpg"></asp:Image>
            </td>
            <td>
                <asp:Image runat="server" Height="428px" Width="419px" ImageUrl="~/Top3.jpg"></asp:Image>
            </td>
        </tr>
               <tr>
            <td>
                <asp:Label runat="server" Text="남자 카키색 셔츠" Font-Size="25px" ></asp:Label>
            </td>
            <td>
                <asp:Label runat="server" Text="여자 흰색 블라우스" Font-Size="25px" ></asp:Label>
            </td>
            <td>
                <asp:Label runat="server" Text="여자 줄무늬있는 흰색셔츠" Font-Size="25px" ></asp:Label>
            </td>
        </tr>

    </table>


    <asp:Image ID="Image1" runat="server" />
</asp:Content>
