<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Password.aspx.cs" Inherits="ShoppingMall.Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>비밀번호 확인</h2>
            
            비밀번호 : <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            &nbsp; <asp:Button ID="Button1" runat="server" Text="확인" OnClick="Button1_Click" class="btn btn-outline-secondary" />
            <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button2" runat="server" Text="목록보기" OnClick="Button2_Click" class="btn btn-outline-secondary" />

</asp:Content>
