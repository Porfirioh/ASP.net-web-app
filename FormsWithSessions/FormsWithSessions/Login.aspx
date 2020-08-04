<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FormsWithSessions.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label runat="server" Text="Login" CssClass="h2 text-primary"></asp:Label>
    </div>
    <br />
    <div class="form-group">
        <asp:Label runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="inputemail" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <br />
    <div class="form-group">
        <asp:Label runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="inputpassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
    </div>
    
    <asp:Button ID="loginbtn" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="loginbtn_Click" />
    <br />
    <asp:HyperLink ID="signuplink" runat="server" NavigateUrl="~/Signup.aspx">Signup</asp:HyperLink>
</asp:Content>
