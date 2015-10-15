<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InfoPersonal.aspx.cs" Inherits="FabricaSonrisas.InfoPersonal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, user-scalable=no initial-scale=1, maximum-scale=1.0, minimum-scale=1.0" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />

    <title></title>
   
    <link href="Estilos/estilos.css" rel="stylesheet" />
    <script src="Scripts/validacionDatos.js"></script>
</head>

<body>
  
    
    <form class="form-horizontal" id="Form1" runat="server">
            <div class="container-fluid">
            <div class="row">

                <div class="color1 form-group">
                    <div class="text-center col-xs-12  col-sm-12 col-md-12 col-lg-12">
                        <br />
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/fds3.png" Height="47px" Width="374px" />
                        <asp:Image ID="Image1" runat="server" Height="47px" ImageUrl="~/Images/fbds - copia.jpg" Width="60px" />
                        <h1 class="text-center">Registrar Persona </h1>
                    </div>

                </div>

            </div>
        </div>


    

        <div class="container"> <%--primera fila--%>

            <aside class="row">
                <div class="col-xs-11  col-sm-6 col-md-6 col-lg-6">
                    <%-- primercolumna fila 1--%>
                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="col-xs-10  col-sm-6 col-md-4 col-lg-4">
                                <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelNom1" runat="server" Text="Primer nombre" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:TextBox ID="txtNombre1" TabIndex="1" runat="server" class="form-control" placeholder="Primer nombre" required autofocus></asp:TextBox>
                            </div>

                            <div class="col-xs-10  col-sm-6 col-md-4 col-lg-4">
                                <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelNom2" runat="server" Text="Segundo nombre" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:TextBox ID="txtNombre2" TabIndex="2" runat="server" class="form-control" placeholder="Segundo nombre"></asp:TextBox>
                            </div>

                            <div class="col-xs-10  col-sm-6 col-md-4 col-lg-4">
                                <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelNomb3" runat="server" Text="Tercer nombre" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:TextBox ID="txtNombre3" TabIndex="3" runat="server" class="form-control" placeholder="Tercer nombre"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="col-xs-10  col-sm-6 col-md-4 col-lg-4">
                                <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelApe1" runat="server" Text="Primer Apellido" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:TextBox ID="txtApellido1" TabIndex="4" runat="server" class="form-control" placeholder="Primer Apellido" required autofocus></asp:TextBox>
                            </div>
                            <div class="col-xs-10  col-sm-6 col-md-4 col-lg-4">
                                <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelApe2" runat="server" Text="Segundo Apellido" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:TextBox ID="txtApellido2" TabIndex="5" runat="server" class="form-control" placeholder="Segundo Apellido"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="form-horizontal">
                        <div class="form-group">
                             <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="label2" runat="server" Text="Fecha de Nacimiento" Font-Bold="true" Font-Size="X-Large"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                            <div class="col-xs-5  col-sm-3 col-md-3 col-lg-3">
                                <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelDia" runat="server" Text="Día" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:DropDownList ID="DropDownListDia" runat="server" class="form-control" AutoPostBack="True">
                                    <asp:ListItem>01</asp:ListItem>
                                    <asp:ListItem>02</asp:ListItem>
                                    <asp:ListItem>03</asp:ListItem>
                                    <asp:ListItem>04</asp:ListItem>
                                    <asp:ListItem>05</asp:ListItem>
                                    <asp:ListItem>06</asp:ListItem>
                                    <asp:ListItem>07</asp:ListItem>
                                    <asp:ListItem>08</asp:ListItem>
                                    <asp:ListItem>09</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>16</asp:ListItem>
                                    <asp:ListItem>17</asp:ListItem>
                                    <asp:ListItem>18</asp:ListItem>
                                    <asp:ListItem>19</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>21</asp:ListItem>
                                    <asp:ListItem>22</asp:ListItem>
                                    <asp:ListItem>23</asp:ListItem>
                                    <asp:ListItem>24</asp:ListItem>
                                    <asp:ListItem>25</asp:ListItem>
                                    <asp:ListItem>26</asp:ListItem>
                                    <asp:ListItem>27</asp:ListItem>
                                    <asp:ListItem>28</asp:ListItem>
                                    <asp:ListItem>29</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>31</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-xs-5  col-sm-3 col-md-3 col-lg-3">
                                <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelMes" runat="server" Text="Mes" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:DropDownList ID="DropDownListMes" runat="server" class="form-control" AutoPostBack="True">
                                    <asp:ListItem Value="01">Enero</asp:ListItem>
                                    <asp:ListItem Value="02">Febrero</asp:ListItem>
                                    <asp:ListItem Value="03">Marzo</asp:ListItem>
                                    <asp:ListItem Value="04">Abril</asp:ListItem>
                                    <asp:ListItem Value="05">Mayo</asp:ListItem>
                                    <asp:ListItem Value="06">Junio</asp:ListItem>
                                    <asp:ListItem Value="07">Julio</asp:ListItem>
                                    <asp:ListItem Value="08">Agosto</asp:ListItem>
                                    <asp:ListItem Value="09">Septiembre</asp:ListItem>
                                    <asp:ListItem Value="10">Octubre</asp:ListItem>
                                    <asp:ListItem Value="11">Noviembre</asp:ListItem>
                                    <asp:ListItem Value="12">Diciembre</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-xs-5  col-sm-3 col-md-3 col-lg-3">
                                <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelAnio" runat="server" Text="Año" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:DropDownList ID="DropDownListAnio" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
                            </div>
                            <div class="col-xs-5  col-sm-3 col-md-3 col-lg-3">
                                <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelSexo" runat="server" Text="Sexo" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:DropDownList ID="DropDownListSexo" runat="server" class="form-control" AutoPostBack="True">
                                    <asp:ListItem>Mujer</asp:ListItem>
                                    <asp:ListItem>Hombre</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-10  col-sm-6 col-md-6 col-lg-6">
                             <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelDpi" runat="server" Text="DPI" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                            <asp:TextBox ID="TxtDPI" runat="server" pattern="\d{13}" onkeypress="return numbersonly(event);" class="form-control" placeholder="Código Único de Indentificación" required autofocus MaxLength="13"></asp:TextBox>
                        </div>
                    </div>
                </div>




                <div class="col-xs-12  col-sm-6 col-md-6 col-lg-6">
                    <%-- Columna2 fila 1--%>
                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="col-xs-9 col-sm-10 col-md-4 col-lg-4">
                                 <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelDepto" runat="server" Text="Departamento" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:DropDownList ID="DropDownDepto" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
                            </div>
                            <div class="col-xs-9  col-sm-10 col-md-4 col-lg-4">
                                 <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelMuni" runat="server" Text="Municipio" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:DropDownList ID="DropDownListMuni" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
                            </div>
                            <div class="col-xs-9  col-sm-10 col-md-4 col-lg-4">
                                 <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelNac" runat="server" Text="Nacionalidad" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:DropDownList ID="DropDownListNac" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="col-xs-9  col-sm-6 col-md-8 col-lg-8">
                                 <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelEmail" runat="server" Text="Email" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:TextBox ID="txtEmail" type="email" runat="server" class="form-control" placeholder="Correo Electrónico" required autofocus></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="col-xs-9  col-sm-6 col-md-8 col-lg-8">
                                 <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelDirec" runat="server" Text="Dirección" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:TextBox ID="txtDireccion" runat="server" class="form-control" placeholder="Dirección" required autofocus></asp:TextBox>
                            </div>
                        </div>
                    </div>



                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="col-xs-9  col-sm-4 col-md-4 col-lg-5">
                                 <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelColor" runat="server" Text="Color favorito" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:DropDownList ID="DropDownListColorFav" runat="server" class="form-control"></asp:DropDownList>
                            </div>

                            <div class="col-xs-9  col-sm-4 col-md-4 col-lg-4">
                                 <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelTallaP" runat="server" Text="Talla de playera" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:DropDownList ID="DropDownListTallaPla" runat="server" class="form-control" placeholder="Talla de Playera" required autofocus></asp:DropDownList>
                            </div>
                            <div class="col-xs-9  col-sm-4 col-md-4 col-lg-3">
                                 <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelTipoSan" runat="server" Text="Tipo de Sangre" Font-Bold="false" Font-Size="Medium"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:DropDownList ID="DropDownListTipoSangre" runat="server" class="form-control"></asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
            </aside>
        </div>



        <%--Fila 2 --%>
        <br />

       <div class="container">
            <div class="main row">
                    <div class="text-center col-xs-12  col-sm-12 col-md-12 col-lg-12">  
                <div class="color1 form-group">
                        <h1 class="text-center">Agregar enfermero </h1>
                    </div>
                </div>
            </div>
        </div>

             <aside class="container">
            <%-- fila 1--%>
            <div class="row">
                <div class="col-xs-11">

                    <div class="form-horizontal">
                        <div class="form-group">
                            <%--<div class="col-xs-9  col-sm-6 col-md-4 col-lg-4">
                                <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelNombre" runat="server" Text="Nombre" Font-Bold="true" Font-Size="X-Large"
                                        CssClass="StrongText"></asp:Label>
                                </div>

                                <asp:DropDownList ID="DropDownListPersona" TabIndex="1" runat="server" class="form-control" placeholder="Primer nombre"></asp:DropDownList>
                            </div>--%>


                            <div class="col-xs-9  col-sm-6 col-md-4 col-lg-3">
                                <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelGrupo" runat="server" Text="Grupo" Font-Bold="true" Font-Size="X-Large"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:DropDownList ID="DropDownListGrupo" TabIndex="2" runat="server" class="form-control" placeholder="Segundo nombre"></asp:DropDownList>
                            </div>
                            <div class="col-xs-9  col-sm-6 col-md-4 col-lg-4">
                                 <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="labelComoEnt" runat="server" Text="Como se enteró" Font-Bold="true" Font-Size="X-Large"
                                        CssClass="StrongText"></asp:Label>
                                </div>
                                <asp:DropDownList ID="DropDownListEnterar" TabIndex="3" runat="server" class="form-control" placeholder="Tercer nombre">
                                    <asp:ListItem Value="1">Página Web</asp:ListItem>
                                    <asp:ListItem Value="2">Periódico</asp:ListItem>
                                    <asp:ListItem Value="3">Anuncio Radial</asp:ListItem>
                                    <asp:ListItem Value="4">Por un amigo</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </aside>

                <aside class="container">
            <%-- fila 2--%>
            <div class="row">
                <div class="col-xs-11">

                    <div class="form-horizontal">
                        <div class=" form-group">
                            <div class="col-xs-9  col-sm-6 col-md-4 col-lg-4">
                            </div>
                            <div class="col-xs-9  col-sm-6 col-md-4 col-lg-3">
                                <asp:CheckBox ID="CheckBoxEstado" runat="server" Height="2px"  Style="text-align: right" Text="Habilitar" />
                            </div>
                    
                        </div>
                    </div>
                </div>
            </div>
        </aside>
                <br />

        <div class="container"> <%--primera fila--%>

            <div class="main row">
                <div class="col-xs-10  col-sm-6 col-md-6 col-lg-6">
                    <%-- primercolumna fila 1--%>
                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="col-xs-10  col-sm-6 col-md-4 col-lg-4">
                                <div style="margin-left: auto; margin-right: auto; text-align: center;">

                                    <asp:Button ID="btnIngresar" runat="server" class="btn btn-lg btn-primary btn-block" Text="Guardar" ></asp:Button>
                                </div>
                            </div>

                            <div class="col-xs-10  col-sm-6 col-md-4 col-lg-4">
                                <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <button type="button" class="btn btn-lg btn-default btn-block" data-dismiss="modal">
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
         </div>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-latest.js"> </script>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    </form>
    </body>
</html>

