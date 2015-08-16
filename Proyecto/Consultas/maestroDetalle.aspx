<%@ Page Title="" Language="VB" MasterPageFile="~/Maestro/maestra.master" AutoEventWireup="false" CodeFile="maestroDetalle.aspx.vb" Inherits="Consultas_maestroDetalle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Detalle de Ventas por Estudiantes</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Ingrese las primeras letras del apellido</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server" MaxLength="20"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2">
               
                <asp:LinkButton ID="LinkButton1" runat="server">Mostrar</asp:LinkButton>
               
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByListaApellidos" TypeName="dsVentasTableAdapters.VentasTableAdapter">
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
                        <asp:ControlParameter ControlID="TextBox1" Name="apellidos" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" AllowPaging="True" DataKeyNames="IdVentas">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="IdVentas" HeaderText="IdVentas" InsertVisible="False" ReadOnly="True" SortExpression="IdVentas" />
                        <asp:BoundField DataField="NFactura" HeaderText="NFactura" SortExpression="NFactura" />
                        <asp:BoundField DataField="FechaRegistro" HeaderText="FechaRegistro" SortExpression="FechaRegistro" />
                        <asp:BoundField DataField="Matricula" HeaderText="Matricula" SortExpression="Matricula" />
                        <asp:BoundField DataField="Cedula" HeaderText="Cedula" SortExpression="Cedula" />
                        <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                        <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataIdVentas" TypeName="dsVentasTableAdapters.DetalleVentasTableAdapter">
                    <InsertParameters>
                        <asp:Parameter Name="IdVentas" Type="Int32" />
                        <asp:Parameter Name="NombreArancel" Type="String" />
                        <asp:Parameter Name="IdArancel" Type="Int32" />
                        <asp:Parameter Name="Unidades" Type="Int32" />
                        <asp:Parameter Name="ValorUnitario" Type="Decimal" />
                        <asp:Parameter Name="ValorTotal" Type="Decimal" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="IdVentas" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
    <p>
        DETALLE ARANCELES<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource2" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="IdDetalleVentas" HeaderText="IdDetalleVentas" InsertVisible="False" ReadOnly="True" SortExpression="IdDetalleVentas" />
                <asp:BoundField DataField="IdVentas" HeaderText="IdVentas" SortExpression="IdVentas" />
                <asp:BoundField DataField="NombreArancel" HeaderText="NombreArancel" SortExpression="NombreArancel" />
                <asp:BoundField DataField="IdArancel" HeaderText="IdArancel" SortExpression="IdArancel" />
                <asp:BoundField DataField="Unidades" HeaderText="Unidades" SortExpression="Unidades" />
                <asp:BoundField DataField="ValorUnitario" HeaderText="ValorUnitario" SortExpression="ValorUnitario" />
                <asp:BoundField DataField="ValorTotal" HeaderText="ValorTotal" SortExpression="ValorTotal" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
</p>
    </asp:Content>

