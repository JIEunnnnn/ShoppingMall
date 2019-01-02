<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Write2.aspx.cs" Inherits="ShoppingMall.Write2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h3>Q&A 작성</h3>
            작성자 <asp:Label ID="Label1" runat="server" ></asp:Label> <br />
           
    
            비밀번호 <asp:TextBox  ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;*필수(게시글 수정삭제시 필요)<Br />

            이메일 <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 20px"></asp:TextBox>
            <hr />
           글제목 <asp:TextBox  ID="TextBox4" runat="server" Width="310px"></asp:TextBox>
            <Br />

            글내용 <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Height="188px" Width="313px"></asp:TextBox>
            <Br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="게시글등록" OnClick="Button1_Click" class="btn btn-outline-secondary"/>
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="목록" Onclick="Button2_Click" class="btn btn-outline-secondary"/>

</asp:Content>
