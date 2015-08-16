<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestras/PagPrincipal.Master" CodeBehind="RegistroMateriaMast.aspx.vb" Inherits="NuevasTECS.RegistroMateriaMast" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Estilos/tabla.css" rel="stylesheet" type="text/css" />
    <link href="../Estilos/botones.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../JavaScript/jquery-2.0.3.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    REGISTRO DE MATERIA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    <table>
        <tr>
            <td>Materias</td>
            <td>Creditos</td>
            <td>Carrera</td>
            <td>Laboratorio</td>
            <td>Activa</td>
            <td>Fecha Creacion</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtMateria" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtCreditos" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtCarrera" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:DropDownList ID="lstLaboratorio" runat="server">
                    <asp:ListItem Value="">Elija una opcion</asp:ListItem>
                    <asp:ListItem Value="true">True</asp:ListItem>
                    <asp:ListItem Value="false">False</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="lstActiva" runat="server">
                    <asp:ListItem Value="">Elija una opcion</asp:ListItem>
                    <asp:ListItem Value="true">True</asp:ListItem>
                    <asp:ListItem Value="false">False</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:TextBox ID="txtFechaCreacion" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:Button ID="btnGuardar" runat="server" Text="Agregar" CssClass="button button-rounded button-flat-primary" />
            </td>
            <td colspan="3" style="text-align: center">
                <input type='reset' value='Limpiar' class='button button-rounded button-flat-primary' />
            </td>
        </tr>
    </table>

    <br />
    <asp:Label ID="lblMensaje" runat="server"></asp:Label>

    <br />
    <br />
    <strong>LISTADO DE MATERIA</strong>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="codigo" HeaderText="codigo" InsertVisible="False" ReadOnly="True" SortExpression="codigo" />
            <asp:BoundField DataField="materia" HeaderText="materia" SortExpression="materia" />
            <asp:BoundField DataField="creditos" HeaderText="creditos" SortExpression="creditos" />
            <asp:BoundField DataField="carrera" HeaderText="carrera" SortExpression="carrera" />
            <asp:CheckBoxField DataField="laboratorio" HeaderText="laboratorio" SortExpression="laboratorio" />
            <asp:CheckBoxField DataField="activa" HeaderText="activa" SortExpression="activa" />
            <asp:BoundField DataField="fechaCreacion" HeaderText="fechaCreacion" SortExpression="fechaCreacion" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NUEVASTECSConnectionString %>" SelectCommand="pa_listadoMaterias" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


</asp:Content>
