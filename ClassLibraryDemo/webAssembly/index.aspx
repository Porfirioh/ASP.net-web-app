<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="webAssembly.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="num1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="num2" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="add" runat="server" Font-Bold="True" OnClick="add_Click" Text="+" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="sub" runat="server" Font-Bold="True" OnClick="sub_Click" Text="-" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="ans" runat="server"></asp:Label>
    <br />
</asp:Content>
