<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ShoppingMall._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Best Item</h1>
         <%:  DateTime.Now.Year %> 년
         <%:  DateTime.Now.Month %> 월
        <%:  DateTime.Now.Day %> 일에 가장 많이 주문한 상품은 무엇일까요? 
      
        <p><a href="BestItem.aspx" class="btn btn-primary btn-lg">구경하러가기 &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Outer(겉옷)</h2>
          <p>
             New outer 

          </p>
            <p>
                <a class="btn btn-default" href="Outer.aspx">이번주 신상 &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Top(상의)</h2>
            <p>
                NEW Top 
            <p>
                <a class="btn btn-default" href="Top.aspx">이번주 신상 &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Bottom(하의)</h2>
            <p>
               NEW Bottom
            <p>
                <a class="btn btn-default" href="Bottom.aspx">이번주 신상 &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
