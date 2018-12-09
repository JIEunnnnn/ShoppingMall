<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Outer.aspx.cs" Inherits="ShoppingMall.Outer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <table bordr="1">
        <tr>
            <td> 
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Outer2.jpg" Height="428px" Width="419px" />
            </td>
            <td>
    <asp:Image ID="Image2" runat="server" ImageUrl="~/Outer3.jpg" />
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Label ID="Label1" runat="server" Text="3색 야구잠바" Font-Size="25px"  ></asp:Label>
            </td>
            <td>
                 <asp:Label ID="Label2" runat="server" Text="롱패딩" Font-Size="25px" ></asp:Label>
            </td>

        </tr>


    </table>
 
</asp:Content>
