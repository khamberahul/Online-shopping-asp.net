﻿<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" Codefile="addtocart.aspx.cs" Inherits="EXAMPLEatc.addtocart" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    <style>
        .rc{
        font-size:11pt;
        margin-left:auto;
        margin-right:auto;
        margin-top:1px;
        margin-bottom:1px;
        padding:3px;
        border-top:1px solid;
        border-left:1px solid;
        border-right:1px solid;
        border-bottom:1px solid;
         -moz-border-radius:8px;
         -webkit-border-radius:8px;
   }
        .bg{
            background-color:black;
            filter:alpha(opacity=90);
            opacity:0.8;

        }

        .pp {
        background-color:aqua;
        border-width:3px;
        border-style:solid;
        border-color:black;
        padding-top:10px;
        padding-left:10px;
        width:400px;
        height:300px;
        
}
</style>
    <body>
    <br />
        <br />
    Your Bag&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Continue Shopping</asp:HyperLink>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" Height="375px" 
         ShowFooter="True" 
        Width="950px" onrowdeleting="GridView1_RowDeleting">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="Sr no." />
            <asp:ImageField DataImageUrlField="ProductImage" HeaderText="Product Image">
                <ControlStyle Height="150px" Width="150px" />
                <ItemStyle HorizontalAlign="Center" Height="100px" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="ProductName" HeaderText="Product Name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="Price(₹)">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalPrice" HeaderText="Total Price(₹)">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#D2B48C" ForeColor="#330099" />
        <HeaderStyle BackColor="#00CDE1" Font-Bold="True" ForeColor="#FFFFCC" 
            Height="50px" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="#F0FFFF" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [laptop]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [storage_devices]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
    
</body>
</asp:Content>
