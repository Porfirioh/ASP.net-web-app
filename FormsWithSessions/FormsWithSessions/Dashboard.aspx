<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="FormsWithSessions.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><%Response.Write(Session["name"]); %></h2>
    <asp:Button ID="logoutbtn" runat="server" Text="Logout" CssClass="btn btn-danger" OnClick="logoutbtn_Click"/>
    
    
</asp:Content>
