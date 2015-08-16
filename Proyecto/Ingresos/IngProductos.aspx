<%@ Page Title="Ingreso de Productos" Language="VB" MasterPageFile="~/Maestro/maestra.master" AutoEventWireup="false" CodeFile="IngProductos.aspx.vb" Inherits="Ingresos_IngProductos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
<asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="idProducto" DataSourceID="ObjectDataSource1" ForeColor="#333333">
    <EditItemTemplate>
        idProducto:
        <asp:Label ID="idProductoLabel1" runat="server" Text='<%# Eval("idProducto") %>' />
        <br />
        nombreProducto:
        <asp:TextBox ID="nombreProductoTextBox" runat="server" Text='<%# Bind("nombreProducto") %>' />
        <br />
        precioVenta:
        <asp:TextBox ID="precioVentaTextBox" runat="server" Text='<%# Bind("precioVenta") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <InsertItemTemplate>
        nombreProducto:
        <asp:TextBox ID="nombreProductoTextBox" runat="server" Text='<%# Bind("nombreProducto") %>' />
        <br />
        precioVenta:
        <asp:TextBox ID="precioVentaTextBox" runat="server" Text='<%# Bind("precioVenta") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        idProducto:
        <asp:Label ID="idProductoLabel" runat="server" Text='<%# Eval("idProducto") %>' />
        <br />
        nombreProducto:
        <asp:Label ID="nombreProductoLabel" runat="server" Text='<%# Bind("nombreProducto") %>' />
        <br />
        precioVenta:
        <asp:Label ID="precioVentaLabel" runat="server" Text='<%# Bind("precioVenta") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
</asp:FormView>
</asp:Content>

