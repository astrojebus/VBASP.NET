<%@ Page Title="" Language="VB" MasterPageFile="~/Examen Maestro/MenuMaestro.master" AutoEventWireup="false" CodeFile="ingresoexamen.aspx.vb" Inherits="Examen_Autenticacion_ingresoexamen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style2" style="margin-left: 280px">
        <tr>
            <td>Login:</td>
            <td>
                <asp:TextBox ID="txtLogin" runat="server" MaxLength="50"></asp:TextBox>
            </td>
            <td>Apellidos:</td>
            <td>
                <asp:TextBox ID="txtApellidos" runat="server" MaxLength="50"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Clave:</td>
            <td>
                <asp:TextBox ID="txtClave" runat="server" MaxLength="30" TextMode="Password"></asp:TextBox>
            </td>
            <td>Nombres:</td>
            <td>
                <asp:TextBox ID="txtNombres" runat="server" MaxLength="50"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Confirme clave:</td>
            <td>
                <asp:TextBox ID="txtConfirme" runat="server" MaxLength="30" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">
                <asp:Button ID="txtGuardar" runat="server" style="text-align: center" Text="Guardar" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
<p>
</p>
</asp:Content>

