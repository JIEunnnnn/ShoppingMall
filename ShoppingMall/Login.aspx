<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ShoppingMall.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    
        <h5>로그인 창</h5>

        <table>
            <tr>
                <td> 아이디: </td>
                <td> <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox> </td>

            </tr>

            <tr>
                <td> 암호:  </td>
                <td>    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>  </td>

            </tr>
        </table>
        
        <asp:Button ID="btnLogin" runat="server" Text="로그인"  OnClick ="btnLogin_Click" class="btn btn-outline-secondary"/>
    </div>

</asp:Content>
