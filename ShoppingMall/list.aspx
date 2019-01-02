<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="ShoppingMall.Man" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  

    <asp:DataList ID="DataList1" runat="server" DataKeyField="num" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">

        <ItemTemplate>
          
                <a href =" <%# "listClick.aspx?No=" + Eval("num") %>">
            <img src='/Photo/<%# Eval("fileurl") %>' width="190" height="200"/>

            <br />
           
            <asp:Label Text='<%# Eval("title") %>' runat="server" ID="titleLabel" /><br />
          
         
            <br />
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:UsersConnectionString %>' SelectCommand="SELECT * FROM [dbWatch]"></asp:SqlDataSource>


    <asp:Button ID="Button1" runat="server" Text="상품등록하기" OnClick="Button1_Click" class="btn btn-outline-secondary" />
</asp:Content>
