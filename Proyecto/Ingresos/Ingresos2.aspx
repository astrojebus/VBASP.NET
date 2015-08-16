<%@ Page Title="Nuevo Ingreso de Producto" Language="VB" MasterPageFile="~/Maestro/maestra.master" AutoEventWireup="false" CodeFile="Ingresos2.aspx.vb" Inherits="Ingresos_Ingresos2" %>

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

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        NUEVO INGRESO DE PRODUCTOS</p>
    <table class="auto-style1">
        <tr>
            <td>Ingrese el producto</td>
            <td>
                <asp:TextBox ID="txtProducto" runat="server" MaxLength="30"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Ingrese el precio de venta</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPrecio" runat="server" MaxLength="5"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPrecio" ErrorMessage="RangeValidator" MaximumValue="100" MinimumValue="0" Type="Integer">Erróneo. Rango permitido 0...100</asp:RangeValidator>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server">Guardar</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

    <p>
        PRODUCTOS INGRESADOS</p>

    <p>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsProductosTableAdapters.ProductosTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_idProducto" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombreProducto" Type="String" />
                <asp:Parameter Name="precioVenta" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombreProducto" Type="String" />
                <asp:Parameter Name="precioVenta" Type="Decimal" />
                <asp:Parameter Name="Original_idProducto" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </p>

    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="idProducto" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="idProducto" HeaderText="idProducto" InsertVisible="False" ReadOnly="True" SortExpression="idProducto" />
                <asp:BoundField DataField="nombreProducto" HeaderText="nombreProducto" SortExpression="nombreProducto" />
                <asp:BoundField DataField="precioVenta" HeaderText="precioVenta" SortExpression="precioVenta" />
            </Columns>
        </asp:GridView>
</p>
</asp:Content>

