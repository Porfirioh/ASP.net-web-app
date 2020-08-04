<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BasicCRUD.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped mt-4">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="brand" HeaderText="brand" SortExpression="brand" />
            <asp:BoundField DataField="display_size" HeaderText="display_size" SortExpression="display_size" />
            <asp:BoundField DataField="ram" HeaderText="ram" SortExpression="ram" />
            <asp:BoundField DataField="processor" HeaderText="processor" SortExpression="processor" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BasicCRUDConnectionString2 %>" DeleteCommand="DELETE FROM [tbl_lptp] WHERE [id] = @original_id AND (([brand] = @original_brand) OR ([brand] IS NULL AND @original_brand IS NULL)) AND (([display_size] = @original_display_size) OR ([display_size] IS NULL AND @original_display_size IS NULL)) AND (([ram] = @original_ram) OR ([ram] IS NULL AND @original_ram IS NULL)) AND (([processor] = @original_processor) OR ([processor] IS NULL AND @original_processor IS NULL))" InsertCommand="INSERT INTO [tbl_lptp] ([brand], [display_size], [ram], [processor]) VALUES (@brand, @display_size, @ram, @processor)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_lptp]" UpdateCommand="UPDATE [tbl_lptp] SET [brand] = @brand, [display_size] = @display_size, [ram] = @ram, [processor] = @processor WHERE [id] = @original_id AND (([brand] = @original_brand) OR ([brand] IS NULL AND @original_brand IS NULL)) AND (([display_size] = @original_display_size) OR ([display_size] IS NULL AND @original_display_size IS NULL)) AND (([ram] = @original_ram) OR ([ram] IS NULL AND @original_ram IS NULL)) AND (([processor] = @original_processor) OR ([processor] IS NULL AND @original_processor IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_brand" Type="String" />
            <asp:Parameter Name="original_display_size" Type="Double" />
            <asp:Parameter Name="original_ram" Type="Int32" />
            <asp:Parameter Name="original_processor" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="brand" Type="String" />
            <asp:Parameter Name="display_size" Type="Double" />
            <asp:Parameter Name="ram" Type="Int32" />
            <asp:Parameter Name="processor" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="brand" Type="String" />
            <asp:Parameter Name="display_size" Type="Double" />
            <asp:Parameter Name="ram" Type="Int32" />
            <asp:Parameter Name="processor" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_brand" Type="String" />
            <asp:Parameter Name="original_display_size" Type="Double" />
            <asp:Parameter Name="original_ram" Type="Int32" />
            <asp:Parameter Name="original_processor" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="d-flex justify-content-center mt-4">
        <a class="btn btn-primary" href="insert.aspx">Insert Record</a>
    </div>
</asp:Content>
