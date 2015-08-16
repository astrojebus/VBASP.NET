<%@ Page Title="" Language="VB" MasterPageFile="~/Maestra/Maestra.master" AutoEventWireup="false" CodeFile="IngresoProductos.aspx.vb" Inherits="Examen_IngresoProductos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>Producto</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Fecha REgistro</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Precio compra</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>precio venta</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>existencias minimas</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>existencias maximas</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>tiene iva</td>
        <td>
            <asp:DropDownList ID="cmbiva" runat="server">
                <asp:ListItem Value="1">Si</asp:ListItem>
                <asp:ListItem Value="0">No</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>tiene descuento</td>
        <td>
            <asp:DropDownList ID="cmbdescuento" runat="server">
                <asp:ListItem Value="1">Si</asp:ListItem>
                <asp:ListItem Value="0">No</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">estado</td>
        <td class="auto-style2">
            <asp:DropDownList ID="cmbestado" runat="server">
                <asp:ListItem>Normal</asp:ListItem>
                <asp:ListItem>Caducado</asp:ListItem>
                <asp:ListItem>No revisado</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server">Guardar</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

