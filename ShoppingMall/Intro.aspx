<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Intro.aspx.cs" Inherits="ShoppingMall.Intro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



        <h5>회원 정보보기</h5>

    
      <table>
           <tr>
            <td>이름 : </td>
            <td>
                <asp:Label ID="Label1" runat="server" ></asp:Label>
               
            </td>
           </tr>

           <tr>
            <td>나이 : </td>
            <td>
                    <asp:Label ID="Label2" runat="server" ></asp:Label>
            </td>
           </tr>

           <tr>
            <td>아이디 : </td>
            <td>
                   <asp:Label ID="Label3" runat="server" ></asp:Label>
            </td>
           </tr>

       
      </table>


     <asp:Button ID="btnModify" runat="server" Text="정보 수정"  OnClick="btnModify_Click" class="btn btn-outline-secondary" />
    <asp:Button ID="Button1" runat="server" Text="장바구니 보기" OnClick="Button1_Click" class="btn btn-outline-secondary"  />



</asp:Content>
