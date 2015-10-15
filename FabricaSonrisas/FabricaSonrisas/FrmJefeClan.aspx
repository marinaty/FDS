<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmJefeClan.aspx.cs" Inherits="FabricaSonrisas.FrmJefeClan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Clan"></asp:Label>
    <br />
    <asp:DropDownList ID="ListaClan" runat="server" Height="30px" Width="550px" AutoPostBack="True" OnSelectedIndexChanged="ListaClan_SelectedIndexChanged" OnTextChanged="ListaClan_SelectedIndexChanged">
    </asp:DropDownList>
&nbsp;<br />
    Doctores destacados* (aun no he sacado el % de asis)<br />
    <asp:DropDownList ID="ListaDoctor" runat="server" Height="30px" Width="550px" AutoPostBack="True">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="ButtonAceptar" runat="server" Height="40px" Text="Aceptar" Width="112px" OnClick="ButtonAceptar_Click" />
&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Height="40px" Text="Button" Width="112px" />
    <br />
</asp:Content>
