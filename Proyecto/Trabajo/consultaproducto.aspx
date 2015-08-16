<%@ Page Title="" Language="VB" MasterPageFile="~/Maestro/maestra.master" AutoEventWireup="false" CodeFile="consultaproducto.aspx.vb" Inherits="Trabajo_consultaproducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <strong>CONSULTA DE PRODUCTOS</strong></p>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByNombreProducto" TypeName="dsProductosTableAdapters.ProductosTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_idProducto" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombreProducto" Type="String" />
            <asp:Parameter Name="precioVenta" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="nombreProducto" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombreProducto" Type="String" />
            <asp:Parameter Name="precioVenta" Type="Decimal" />
            <asp:Parameter Name="Original_idProducto" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <table class="auto-style1">
        <tr>
            <td>Ingrese el nombre del producto</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idProducto" DataSourceID="ObjectDataSource1" Height="179px">
                    <Columns>
                        <asp:BoundField DataField="idProducto" HeaderText="idProducto" InsertVisible="False" ReadOnly="True" SortExpression="idProducto" />
                        <asp:BoundField DataField="nombreProducto" HeaderText="nombreProducto" SortExpression="nombreProducto" />
                        <asp:BoundField DataField="precioVenta" HeaderText="precioVenta" SortExpression="precioVenta" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <td> </td>
        <td> </td>
        <tr>
        <td> 
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByListaProductos" TypeName="dsProductosTableAdapters.ProductosTableAdapter" UpdateMethod="Update">
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
            </td>
        <td> 
            <asp:DropDownList ID="cmbProductos" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="nombreProducto" DataValueField="nombreProducto">
            </asp:DropDownList>
            </td>
        </tr>
        <tr>
        <td> 
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByNombreProducto" TypeName="dsProductosTableAdapters.ProductosTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_idProducto" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nombreProducto" Type="String" />
                    <asp:Parameter Name="precioVenta" Type="Decimal" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="cmbProductos" Name="nombreProducto" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombreProducto" Type="String" />
                    <asp:Parameter Name="precioVenta" Type="Decimal" />
                    <asp:Parameter Name="Original_idProducto" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            </td>
        <td> &nbsp;</td>
        </tr>
        <tr>
        <td> 
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="idProducto" DataSourceID="ObjectDataSource3" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="idProducto" HeaderText="idProducto" InsertVisible="False" ReadOnly="True" SortExpression="idProducto" />
                    <asp:BoundField DataField="nombreProducto" HeaderText="nombreProducto" SortExpression="nombreProducto" />
                    <asp:BoundField DataField="precioVenta" HeaderText="precioVenta" SortExpression="precioVenta" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            </td>
        <td> &nbsp;</td>
        </tr>
    </table>
</asp:Content>

