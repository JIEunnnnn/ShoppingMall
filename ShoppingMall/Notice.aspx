<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Notice.aspx.cs" Inherits="ShoppingMall.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  

        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="num" DataSourceID="SqlDataSource1">
                <Columns>

                     <asp:BoundField DataField="num" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="Id">
                         <HeaderStyle Width="30px" />

                     </asp:BoundField>

                    <asp:TemplateField HeaderText="제목">
                        <ItemTemplate>
                            <a href="<%# "View.aspx?No=" + Eval("num") %>">
                                <%# Eval("Title") %></a>

                        </ItemTemplate>
                        <HeaderStyle Width="250px" />

                    </asp:TemplateField>

                   
                   <asp:BoundField DataField="name" HeaderText="이름" SortExpression="name">
                          <HeaderStyle Width="80px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="writedate" HeaderText="올린날짜" SortExpression="writedate">

                          <HeaderStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="readcount" HeaderText="조회수" SortExpression="readcount">
                        <HeaderStyle Width="80px" />

                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [name], [num], [title], [writedate], [readcount] FROM [tblBoard]"></asp:SqlDataSource>
            <br />
        </div>

        <asp:DropDownList ID="drdwSearch" runat="server">
            <asp:ListItem Value="title">제목</asp:ListItem>
            <asp:ListItem  Value="name">작성자</asp:ListItem>
            <asp:ListItem Value="contents">내용</asp:ListItem>

        </asp:DropDownList>

        <asp:TextBox ID="txtSearch" runat="server" Height="16px" Width="645px"></asp:TextBox>


        <asp:Button ID="btnSearch1" runat="server" Text="검색" OnClick="btnSearch1_Click" />
        &nbsp;
        <asp:Button ID="btnWrite" runat="server" Text="작성하기" OnClick="btnWrite_Click" style="height: 27px"  />
  

</asp:Content>
