<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmClanes.aspx.cs" Inherits="FabricaSonrisas.FrmClanes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Nombre de Clan"></asp:Label>
    <br />
    <asp:TextBox ID="TextNombre" runat="server" ToolTip="Ingresa el nombre del Clan" Width="658px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Dia de Visita"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Hora de Visita"></asp:Label>
    <br />
    <asp:DropDownList ID="ListaDias" runat="server" Height="31px" ToolTip="Dia de visita" Width="149px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>-</asp:ListItem>
        <asp:ListItem>Lunes</asp:ListItem>
        <asp:ListItem>Martes</asp:ListItem>
        <asp:ListItem>Miercoles</asp:ListItem>
        <asp:ListItem>Jueves</asp:ListItem>
        <asp:ListItem>Viernes</asp:ListItem>
        <asp:ListItem>Sabado</asp:ListItem>
        <asp:ListItem>Domingo</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ListaHora" runat="server" Height="31px" ToolTip="Hora de visita" Width="149px">
        <asp:ListItem>-</asp:ListItem>
        <asp:ListItem Value="08:00:00">8 a. m.</asp:ListItem>
        <asp:ListItem Value="09:00:00">9 a. m.</asp:ListItem>
        <asp:ListItem Value="10:00:00">10 a. m.</asp:ListItem>
        <asp:ListItem Value="11:00:00">11 a. m.</asp:ListItem>
        <asp:ListItem Value="12:00:00">12 p. m.</asp:ListItem>
        <asp:ListItem Value="14:00:00">2 p. m.</asp:ListItem>
        <asp:ListItem Value="15:00:00">3 p. m.</asp:ListItem>
        <asp:ListItem Value="16:00:00">4 p. m.</asp:ListItem>
        <asp:ListItem Value="17:00:00">5 p. m.</asp:ListItem>
        <asp:ListItem Value="18:00:00">6 p. m.</asp:ListItem>
        <asp:ListItem Value="19:00:00">7 p. m.</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="   Activo" />
    <br />
    <br />
    <asp:Button ID="ButtonAceptar" runat="server" Height="36px" OnClick="Button1_Click" Text="Aceptar" Width="131px" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="ButtonModif" runat="server" Height="36px" OnClick="Button1_Click" Text="Modificar" Width="131px" />
    <br />
</asp:Content>
