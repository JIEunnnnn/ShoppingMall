<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ShoppingMall.Register" %>





<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

  <div>


       <h5>회원가입 창 </h5>

    <table>
        <tr>
            <td>이름 : </td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>

            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="이름을 입력해주세요"
                    ControlToValidate="txtName" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>

        </tr>


        <tr>
            <td>나이 : </td>
            <td>
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            </td>

            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="나이를 입력해주세요"
                    ControlToValidate="txtAge" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>

        </tr>


        <tr>
            <td>아이디 : </td>
            <td>
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            </td>

            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="아이디를 입력해주세요"
                    ControlToValidate="txtID" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>

        </tr>

        <tr>
            <td>비밀번호 : </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>비밀번호재확인 : </td>
            <td>
                <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="비밀번호가 일치하지않습니다" ControlToCompare="txtPassword"
                    ControlToValidate="txtPassword2" Display="Dynamic"></asp:CompareValidator>
            </td>

        </tr>
   

    </table>

      
                <asp:Button ID="Button1" runat="server" Text="회원가입" OnClick="Button1_Click" class="btn btn-outline-secondary" />


  </div>

   
 





</asp:Content>
