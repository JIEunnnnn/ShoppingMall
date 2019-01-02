<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ShoppingMall.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h5><asp:Label ID="Label1" runat="server" ></asp:Label>님의 장바구니
     </h5>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            
           
            <asp:BoundField DataField="name" HeaderText="상품이름" SortExpression="name"></asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="가격" SortExpression="price"></asp:BoundField>
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:UsersConnectionString %>' SelectCommand="SELECT * FROM [tblCart]"></asp:SqlDataSource>


    

    <asp:Button ID="Button1" runat="server" Text="돌아가기" class="btn btn-outline-secondary" OnClick="Button1_Click" />

</asp:Content>
