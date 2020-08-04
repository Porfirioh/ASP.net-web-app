<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="RepeaterDemoCRUD.aspx.cs" Inherits="Assignment_Repeater.RepeaterDemoCRUD" %>
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
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="269px" Width="801px">
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
        <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CommentsConnectionString4 %>" DeleteCommand="DELETE FROM [tbl_add_comment] WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL)) AND (([Comment] = @original_Comment) OR ([Comment] IS NULL AND @original_Comment IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL))" InsertCommand="INSERT INTO [tbl_add_comment] ([Name], [Subject], [Comment], [date]) VALUES (@Name, @Subject, @Comment, @date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_add_comment]" UpdateCommand="UPDATE [tbl_add_comment] SET [Name] = @Name, [Subject] = @Subject, [Comment] = @Comment, [date] = @date WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL)) AND (([Comment] = @original_Comment) OR ([Comment] IS NULL AND @original_Comment IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter Name="original_Subject" Type="String" />
        <asp:Parameter Name="original_Comment" Type="String" />
        <asp:Parameter Name="original_date" Type="DateTime" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Subject" Type="String" />
        <asp:Parameter Name="Comment" Type="String" />
        <asp:Parameter Name="date" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Subject" Type="String" />
        <asp:Parameter Name="Comment" Type="String" />
        <asp:Parameter Name="date" Type="DateTime" />
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter Name="original_Subject" Type="String" />
        <asp:Parameter Name="original_Comment" Type="String" />
        <asp:Parameter Name="original_date" Type="DateTime" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<br />
<br />
<br />
    <%--<a href="RepeaterDemo.aspx">Question 1</a>--%>
</asp:Content>
