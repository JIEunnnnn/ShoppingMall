<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Modifylogin.aspx.cs" Inherits="ShoppingMall.Modifylogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
    
    <h5>정보수정하기</h5>

    
      <table>
           <tr>
            <td>이름 : </td>
            <td>
               
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
           </tr>

           <tr>
            <td>나이 : </td>
            <td>
                  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
           </tr>

           <tr>
            <td>아이디 : </td>
            <td>
                  <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
               <td>
                   <asp:Button ID="btnModify" runat="server" Text="정보 수정"  OnClick="btnModify_Click"  class="btn btn-outline-secondary"/>

               </td>
           </tr>

       
      </table>

     

</asp:Content>
