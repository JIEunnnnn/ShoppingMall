<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="writelist.aspx.cs" Inherits="ShoppingMall.writelist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table >
        <tr>
            <td colspan="2">  <h2>상품 등록하기</h2>  </td>

        </tr>
        <tr>
            <td>
                  작성자:
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

            </td>
        </tr>

        <tr>
            <td>
                  사진등록: 
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" /> 
            </td>

        </tr>
        <tr>
            <td>
            상품제목 </td>
            <td>
                
             <asp:TextBox ID="txttitle" runat="server"></asp:TextBox> 
            </td>
        </tr>
        <tr>
            <td>
            상품가격   </td>
            <td>    <asp:TextBox ID="txtprice" runat="server"></asp:TextBox> </td>
        </tr>
        <tr>
            <td>상품내용 </td>
            <td> <asp:TextBox ID="txtcontents" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <td>
                  <asp:Button ID="btnwrite" runat="server" Text="상품등록" OnClick="btnwrite_Click" class="btn btn-outline-secondary" />
            </td>
            <td>
                 <asp:Button ID="btnlist" runat="server" Text="목록" OnClick="btnlist_Click" class="btn btn-outline-secondary"/>
            </td>
        </tr>

    </table>

   
        
   
           
</asp:Content>
