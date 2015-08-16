<%@ Page Title="" Language="VB" MasterPageFile="~/Maestro/maestra.master" AutoEventWireup="false" CodeFile="resultadoAranceles.aspx.vb" Inherits="Consultas_resultadoAranceles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlacerHolde1w" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataxFechas" TypeName="dsVentasTableAdapters.FechasTableAdapter">
        <SelectParameters>
            <asp:SessionParameter Name="NombreArancel" SessionField="arancel" Type="String" />
            <asp:SessionParameter Name="fechai" SessionField="fechai" Type="DateTime" />
            <asp:SessionParameter Name="fechaf" SessionField="fechaf" Type="DateTime" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="NFactura" HeaderText="NFactura" SortExpression="NFactura" />
            <asp:BoundField DataField="FechaRegistro" HeaderText="FechaRegistro" SortExpression="FechaRegistro" />
            <asp:BoundField DataField="Cedula" HeaderText="Cedula" SortExpression="Cedula" />
            <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
            <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
            <asp:BoundField DataField="NombreArancel" HeaderText="NombreArancel" SortExpression="NombreArancel" />
            <asp:BoundField DataField="ValorTotal" HeaderText="ValorTotal" SortExpression="ValorTotal" />
        </Columns>
    </asp:GridView>
</asp:Content>

