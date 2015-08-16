<%@ Page Title="" Language="VB" MasterPageFile="~/Maestro/maestra.master" AutoEventWireup="false" CodeFile="porNFactura.aspx.vb" Inherits="Informes_porNFactura" %>

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
   
    <p>
        <br />
    </p>
    <table class="auto-style1">
        <tr>
            <td colspan="2" style="text-align: center">IMPRESIÓN DE FACTURA</td>
        </tr>
        <tr>
            <td>NUMERO DE FACTURA</td>
            <td>
                <asp:TextBox ID="txtFactura" runat="server" MaxLength="10"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server">Imprimir</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
   
</asp:Content>

