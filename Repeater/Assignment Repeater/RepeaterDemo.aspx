<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="RepeaterDemo.aspx.cs" Inherits="Assignment_Repeater.RepeaterDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
    &nbsp;
    <asp:TextBox ID="name" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label>
    &nbsp;
    <asp:TextBox ID="subject" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Comment"></asp:Label>
    &nbsp;
    <asp:TextBox ID="comment" runat="server" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="addcomment" runat="server" OnClick="addcomment_Click" Text="Add Comment" />
    <br />
    <br />
    <br />



    <table style="width: 50%; border-collapse: collapse; background:black; color:white;" border="1">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <itemtemplate>

                    <tr>
                        <td><b>Subject:</b>
                            <asp:Label runat="server" Text='<%#Eval("Subject") %>'>'></asp:Label></td>
                    
                        <td>
                            <asp:Label runat="server" Text='<%#Eval("Comment") %>'></asp:Label></td>

                   
                        <td><b>Posted By:</b> &nbsp;<asp:Label runat="server" Text='<%#Eval("Name") %>'>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Created Time:</b> &nbsp;<asp:Label ID="Label8" runat="server" Text='<%#Eval("Date") %>'></asp:Label></td>
                    </tr>
             </itemtemplate>
        </asp:Repeater>
    </table>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CommentsConnectionString3 %>" SelectCommand="SELECT * FROM [tbl_add_comment] ORDER BY [ID] DESC"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <%--<a href="RepeaterDemoCRUD.aspx">Question 2</a>--%>
    <br />
    <br />
    <br />
</asp:Content>
