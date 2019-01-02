<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listClick.aspx.cs" Inherits="ShoppingMall.listClick" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <asp:Label ID="lblFileName" runat="server" Text="Label"  Visible="false"></asp:Label> <br />
    
    <table>
        <tr  >
            <td colspan="2">   <asp:Image ID="Image1" runat="server" width="400px" Height="400px"/>
        </td>

        </tr>
        <tr>
            <td>  <h3> 상품이름 :  <asp:Label ID="Label1" runat="server" ></asp:Label>    </h3>  </td>
            <td>  <h3> 가격 : <asp:Label ID="Label2" runat="server"></asp:Label>    </h3> </td>
        </tr>

        <tr>
            
            <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="장바구니담기"  class="btn btn-outline-secondary" OnClick="Button1_Click" />  </td>
            <td>  <asp:Button ID="btnList" runat="server" Text="목록보기"  OnClick="btnList_Click"  class="btn btn-outline-secondary"/> </td>

        </tr>

    </table>
    
   
      
       
  

</asp:Content>
