<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Write.aspx.cs" Inherits="WebApplication1127.Write" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>게시판 글쓰기</h3>
            작성자 <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 20px"></asp:TextBox>
            &nbsp;*필수<Br />
            비밀번호 <asp:TextBox  ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;*필수(게시글 수정삭제시 필요)<Br />

            이메일 <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 20px"></asp:TextBox>
            <hr />
           글제목 <asp:TextBox  ID="TextBox4" runat="server" Width="310px"></asp:TextBox>
            <Br />

            글내용 <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Height="188px" Width="313px"></asp:TextBox>
            <Br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="게시글등록" OnClick="Button1_Click" />
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="목록" Onclick="Button2_Click"/>
        </div>
    </form>
</body>
</html>
