<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="WebServiceForm.aspx.cs" Inherits="Web_Service_Demo.WebServiceForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Day" runat="server" Text="Day"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
<asp:Label ID="Month" runat="server" Text="Month"></asp:Label>
&nbsp;&nbsp;
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<br />
<asp:Label ID="Year" runat="server" Text="Year"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
<br />
<br />
<asp:Label ID="Label2" runat="server"></asp:Label>
<br />
</asp:Content>
