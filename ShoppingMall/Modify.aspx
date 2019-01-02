<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Modify.aspx.cs" Inherits="ShoppingMall.Modify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <align="center">
            <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Q&A 수정</h2></align>
            작성자: <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
            <hr />
            글제목: <asp:TextBox ID="txttitle" runat="server" Width="700px"></asp:TextBox>
            <br />
            글내용: <asp:TextBox ID="txtContents" runat="server" TextMode="MultiLine" Height="341px" Width="698px"></asp:TextBox>
            <hr />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnReset" runat="server" Text="수정취소" OnClick="btnReset_Click" class="btn btn-outline-secondary" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnModify" runat="server" Text="게시물 수정" OnClick="btnModify_Click" class="btn btn-outline-secondary" />

</asp:Content>
