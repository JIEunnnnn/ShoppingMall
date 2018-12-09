<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bottom.aspx.cs" Inherits="ShoppingMall.Bottom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <table border="1">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Bottom1.jpg" Height="428px" Width="419px" />
            </td>
            <td>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Bottom2.jpg" Height="428px" Width="419px"/>
            </td>
            <td>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Bottom3.jpg" Height="428px" Width="419px"/>
            </td>
        </tr>
               <tr>
            <td>
                <asp:Label runat="server" Text="여자 빨간색 테니스 스커트" Font-Size="25px"></asp:Label>
            </td>
            <td>
                <asp:Label runat="server" Text="여자 청바지" Font-Size="25px"></asp:Label>
            </td>
            <td>
                <asp:Label runat="server" Text="남자 슬랙스" Font-Size="25px"></asp:Label>
            </td>
        </tr>

    </table>
</asp:Content>
