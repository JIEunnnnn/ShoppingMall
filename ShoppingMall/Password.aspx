<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Password.aspx.cs" Inherits="WebApplication1127.Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <div>
            <h2>비밀번호 확인</h2>
            
            비밀번호 : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp; <asp:Button ID="Button1" runat="server" Text="확인" OnClick="Button1_Click" />
            <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button2" runat="server" Text="목록보기" CssClass="auto-style1" OnClick="Button2_Click" />
            </div>
    </form>
</body>
</html>
