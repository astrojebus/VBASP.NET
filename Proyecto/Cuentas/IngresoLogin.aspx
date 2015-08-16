<%@ Page Title="" Language="VB" MasterPageFile="~/Maestro/menuVacio.master" AutoEventWireup="false" CodeFile="IngresoLogin.aspx.vb" Inherits="Cuentas_IngresoLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlacerHolde1w" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">
                    <asp:LinkButton ID="btnIngresar" runat="server" style="text-align: center">Ingresar</asp:LinkButton>
                </td>
            </tr>
        </table>
</asp:Content>

