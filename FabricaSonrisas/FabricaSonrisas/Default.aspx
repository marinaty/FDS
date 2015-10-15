<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FabricaSonrisas._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <ul id="menu">
        <li><a id="A1" runat="server" href="~/">Tabla 1</a></li>
        <li><a id="A2" runat="server" href="~/">Tabla 2</a></li>
        <li><a id="A3" runat="server" href="~/">Tabla 3</a></li>
        <li><a id="A4" runat="server" href="~/">Tabla N</a></li>
    </ul>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd">
  </div>
  <div class="checkbox">
    <label><input type="checkbox"> Remember me</label>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</asp:Content>
