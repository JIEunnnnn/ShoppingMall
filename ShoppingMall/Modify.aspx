<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modify.aspx.cs" Inherits="WebApplication1127.Modify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
             <div>
           <align="center">
            <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 게시판 수정하기</h2></align>
            작성자: <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
            <hr />
            글제목: <asp:TextBox ID="txttitle" runat="server" Width="700px"></asp:TextBox>
            <br />
            글내용: <asp:TextBox ID="txtContents" runat="server" TextMode="MultiLine" Height="341px" Width="698px"></asp:TextBox>
            <hr />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnReset" runat="server" Text="수정취소" OnClick="btnReset_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnModify" runat="server" Text="게시물 수정" OnClick="btnModify_Click" style="height: 27px" />
        </div>
    </form>
</body>
</html>
