<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="WebApplication1127.View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>게시판 글 보기</h2>
            작성자:<asp:Label ID="Label1" runat="server" ></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            작성일:<asp:Label ID="Label2" runat="server" ></asp:Label>
            조회수 <asp:Label ID="Label3" runat="server"></asp:Label>
            <Br />
           
            <br />
             <asp:Label ID="Label4" runat="server" ></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" TextMode="multiline" Height="202px" Width="595px"></asp:TextBox>
            <hr />

            <asp:Button ID="Button2" runat="server" Text="수정" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="삭제" OnClick="Button3_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="목록보기" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
