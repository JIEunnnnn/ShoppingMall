<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ShoppingMall.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



 <asp:LoginView ID="LoginView1" runat="server">
              <AnonymousTemplate>
                  <asp:LoginStatus ID="LoginStatus1" runat="server" LoginText="로그인" ForeColor="Gray" OnLoggingOut="LoginStatus1_LoggingOut" />
                  | 
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx" ForeColor="Gray">회원가입</asp:HyperLink>
              </AnonymousTemplate>
            <LoggedInTemplate>
                <asp:LoginStatus ID="LoginStatus2" runat="server"  LoginText="로그아웃" ForeColor="Gray" /> 

                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Intro.aspx">
                     <asp:LoginName ID="LoginName1" runat="server" />
                </asp:HyperLink>
            </LoggedInTemplate>
     </asp:LoginView>


</asp:Content>
