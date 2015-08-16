<%@ Page Title="" Language="VB" MasterPageFile="~/Examen Maestro/MenuMaestro.master" AutoEventWireup="false" CodeFile="loginexamen.aspx.vb" Inherits="Examen_Autenticacion_loginexamen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <p>
    <br />
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Ingrese el Login:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLogin" runat="server" MaxLength="30"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Ingrese la Clave:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtClave" runat="server" MaxLength="30" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMensaje" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">
                    <asp:LinkButton ID="btnIngresar" runat="server" style="text-align: center">Ingresar</asp:LinkButton>
                </td>
            </tr>
        </table>
</p>
<p>
</p>
</asp:Content>

