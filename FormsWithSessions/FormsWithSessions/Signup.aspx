<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="FormsWithSessions.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label runat="server" Text="Signup" CssClass="h2 text-primary"></asp:Label>
    </div>
    <br />
    <div class="form-group">
        <asp:Label runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="inputname" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <br />
    <div class="form-group">
        <asp:Label runat="server" Text="Age"></asp:Label>
        <asp:TextBox ID="inputage" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
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
    
    <asp:Button ID="signupbtn" runat="server" Text="Signup" CssClass="btn btn-primary" OnClick="signupbtn_Click" />

    
    
    <br />
    <asp:HyperLink  ID="loginlink" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>

    
    
</asp:Content>
