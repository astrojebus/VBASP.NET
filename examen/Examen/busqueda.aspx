<%@ Page Title="" Language="VB" MasterPageFile="~/Maestra/Maestra.master" AutoEventWireup="false" CodeFile="busqueda.aspx.vb" Inherits="Examen_busqueda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>Ingresel nombre del producto</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="datasetProductosTableAdapters.ProductosTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_idProducto" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Producto" Type="String" />
                    <asp:Parameter Name="FechaRegistro" Type="DateTime" />
                    <asp:Parameter Name="PrecioCompra" Type="Double" />
                    <asp:Parameter Name="PrecioVenta" Type="Double" />
                    <asp:Parameter Name="ExistenciasMinimas" Type="Int32" />
                    <asp:Parameter Name="ExistenciasMaxima" Type="Int32" />
                    <asp:Parameter Name="tieneIVA" Type="Boolean" />
                    <asp:Parameter Name="tieneDescuento" Type="Boolean" />
                    <asp:Parameter Name="Estado" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="producto" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Producto" Type="String" />
                    <asp:Parameter Name="FechaRegistro" Type="DateTime" />
                    <asp:Parameter Name="PrecioCompra" Type="Double" />
                    <asp:Parameter Name="PrecioVenta" Type="Double" />
                    <asp:Parameter Name="ExistenciasMinimas" Type="Int32" />
                    <asp:Parameter Name="ExistenciasMaxima" Type="Int32" />
                    <asp:Parameter Name="tieneIVA" Type="Boolean" />
                    <asp:Parameter Name="tieneDescuento" Type="Boolean" />
                    <asp:Parameter Name="Estado" Type="String" />
                    <asp:Parameter Name="Original_idProducto" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server">Consultar</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idProducto" DataSourceID="ObjectDataSource1">
                <Columns>
                    <asp:BoundField DataField="idProducto" HeaderText="idProducto" InsertVisible="False" ReadOnly="True" SortExpression="idProducto" />
                    <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" />
                    <asp:BoundField DataField="FechaRegistro" HeaderText="FechaRegistro" SortExpression="FechaRegistro" />
                    <asp:BoundField DataField="PrecioCompra" HeaderText="PrecioCompra" SortExpression="PrecioCompra" />
                    <asp:BoundField DataField="PrecioVenta" HeaderText="PrecioVenta" SortExpression="PrecioVenta" />
                    <asp:BoundField DataField="ExistenciasMinimas" HeaderText="ExistenciasMinimas" SortExpression="ExistenciasMinimas" />
                    <asp:BoundField DataField="ExistenciasMaxima" HeaderText="ExistenciasMaxima" SortExpression="ExistenciasMaxima" />
                    <asp:CheckBoxField DataField="tieneIVA" HeaderText="tieneIVA" SortExpression="tieneIVA" />
                    <asp:CheckBoxField DataField="tieneDescuento" HeaderText="tieneDescuento" SortExpression="tieneDescuento" />
                    <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                </Columns>
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

