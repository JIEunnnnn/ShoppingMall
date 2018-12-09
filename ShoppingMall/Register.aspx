<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ShoppingMall.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
    아이디 : <br />
    <asp:TextBox ID="txtID" runat="server"></asp:TextBox> <br />
    비밀번호 : <br />
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox> <br /><br />
    <asp:Button ID="Button1" runat="server" Text="로그인(회원가입)"  OnClick="Button1_Click"/> <br />

</asp:Content>
