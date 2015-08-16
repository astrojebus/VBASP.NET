<%@ Page Title="" Language="VB" MasterPageFile="~/Maestro/maestra.master" AutoEventWireup="false" CodeFile="consultafactura.aspx.vb" Inherits="Consultas_consultafactura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    CONSULTA POR NÚMERO DE FACTURA</p>
<table class="auto-style1">
    <tr>
        <td>Ingrese el número de factura</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" MaxLength="10"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataNumFactura" TypeName="dsVentasTableAdapters.VentasTableAdapter">
                <InsertParameters>
                    <asp:Parameter Name="NFactura" Type="String" />
                    <asp:Parameter Name="FechaRegistro" Type="DateTime" />
                    <asp:Parameter Name="Matricula" Type="String" />
                    <asp:Parameter Name="Cedula" Type="String" />
                    <asp:Parameter Name="Apellidos" Type="String" />
                    <asp:Parameter Name="Nombres" Type="String" />
                    <asp:Parameter Name="Escuela" Type="String" />
                    <asp:Parameter Name="Observaciones" Type="String" />
                    <asp:Parameter Name="TotalGen" Type="Decimal" />
                    <asp:Parameter Name="Telefono" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Nfactura" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
                <Columns>
                    <asp:BoundField DataField="IdVentas" HeaderText="IdVentas" InsertVisible="False" ReadOnly="True" SortExpression="IdVentas" />
                    <asp:BoundField DataField="NFactura" HeaderText="NFactura" SortExpression="NFactura" />
                    <asp:BoundField DataField="FechaRegistro" HeaderText="FechaRegistro" SortExpression="FechaRegistro" />
                    <asp:BoundField DataField="Matricula" HeaderText="Matricula" SortExpression="Matricula" />
                    <asp:BoundField DataField="Cedula" HeaderText="Cedula" SortExpression="Cedula" />
                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                    <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                    <asp:BoundField DataField="Escuela" HeaderText="Escuela" SortExpression="Escuela" />
                    <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                    <asp:BoundField DataField="TotalGen" HeaderText="TotalGen" SortExpression="TotalGen" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

