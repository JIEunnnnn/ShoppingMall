<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="ShoppingMall.View2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <div>
            <h2>Q&A</h2>
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

            <asp:Button ID="Button2" runat="server" Text="수정" OnClick="Button2_Click" class="btn btn-outline-secondary"/>
            <asp:Button ID="Button3" runat="server" Text="삭제" OnClick="Button3_Click" class="btn btn-outline-secondary" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="목록보기" OnClick="Button1_Click" class="btn btn-outline-secondary" />
          
            <br />
            작성자 : <asp:Label ID="Label5" runat="server" ></asp:Label> <br />
            한줄댓글 : <asp:TextBox ID="txtComment" runat="server"></asp:TextBox>

            <asp:Button ID="btnComments" runat="server" Text="댓글달기" OnClick="btnComments_Click" class="btn btn-outline-secondary" />
            <br />
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                    
                  <%# Eval("name") %>
                  <%# Eval("contents") %> [<%# Eval("writedate") %>] <br />


                </ItemTemplate>

            </asp:Repeater>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tblComment]"></asp:SqlDataSource>

        </div>

</asp:Content>
