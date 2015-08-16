<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestras/PagPrincipal.Master" CodeBehind="RegistroUsuario.aspx.vb" Inherits="NuevasTECS.RegistroUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style7" colspan="2"><strong>REGISTRAR USUARIO</strong></td>
        </tr>
        <tr>
            <td>Nombre Usuario</td>
            <td>
                <asp:TextBox ID="txtNombreUsuario" runat="server" Width="350px" MaxLength="50" required ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Clave</td>
            <td>
                <asp:TextBox ID="txtClave" runat="server" Width="350px"  TextMode="Password" required></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td>Confirmar Clave</td>
            <td>
                <asp:TextBox ID="txtConfirmaClave" runat="server" Width="350px" TextMode="Password" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width:30%">Nombres</td>
            <td>
                <asp:TextBox ID="txtNombres" runat="server" Width="350px" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td ><asp:Label ID="Label1" runat="server" Text="Apellidos" required></asp:Label>
            </td>
            <td style="width:100%;">
                <asp:TextBox ID="txtApellidos" runat="server" Width="350px" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" />
            </td>
            <td style="width:100%;">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" />
            </td>
        </tr>
    </table>

</asp:Content>
