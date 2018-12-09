<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShoppingMall.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 
    <h2>쇼핑몰 회원인가요? </h2>

    아이디: <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <br />

    비밀번호: <br /> 
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="로그인" OnClick="Button1_Click" style="height: 26px" /> <br />

    <br />
    아이디/비밀번호를 밎어버렸다면
    <asp:Button ID="Button2" runat="server" Text="아이디/비밀번호찾기" Height="24px" Width="181px" OnClick="Button2_Click" /> 
    <br />
    회원이 아니라면 
    <asp:Button ID="Button3" runat="server" Text="회원가입" OnClick="Button3_Click" />

</asp:Content>
