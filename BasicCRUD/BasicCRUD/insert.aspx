<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="insert.aspx.cs" Inherits="BasicCRUD.insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form class="mt-4">
      <div class="form-group">
        <label>Brand</label>
        <input type="text" class="form-control" id="lptpbrand">
      </div>
      <div class="form-group">
        <label>Display Size</label>
        <input type="number" class="form-control" id="lptpdispsize">
      </div>
      <div class="form-group">
        <label>RAM</label>
          <input type="number" class="form-control" id="lptpram">
      </div>
      <div class="form-group">
        <label>Processor</label>
        <input type="text" class="form-control" id="lptpprocessor">
      </div>
      <div class="form-group">
          <input type="submit" class="btn btn-primary" name="submit" value="Add Record" id="addrecord">
      </div>
    </form>
</asp:Content>
