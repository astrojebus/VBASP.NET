<%@ Page Title="Modificar clave" Language="VB" MasterPageFile="~/Maestro/maestra.master" AutoEventWireup="false" CodeFile="ModificaClave.aspx.vb" Inherits="Cuentas_ModificaClave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlacerHolde1w" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>Login</td>
            <td>
                <asp:Label ID="lblLogin" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Ingrese la clave"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtClave1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Confirme la clave"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtClave2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server">Modificar la clave</asp:LinkButton>
            </td>
        </tr>
    </table>
    <p>
        <br />
    </p>
    <div>
    </div>
    <p>
    </p>
</asp:Content>

