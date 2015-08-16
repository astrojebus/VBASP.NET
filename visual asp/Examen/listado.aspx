<%@ Page Title="" Language="VB" MasterPageFile="~/Examen Maestro/MenuMaestro.master" AutoEventWireup="false" CodeFile="listado.aspx.vb" Inherits="Examen_listado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table class="auto-style1">
        <tr>
            <td>Ingrese escuela</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="escuela" DataValueField="escuela">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server">Consultar</asp:LinkButton>
            </td>
        </tr>
    </table>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ventasConnectionString %>" SelectCommand="SELECT [Escuela] FROM [Ventas]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ventasConnectionString %>" SelectCommand="prEstudiantes_traerporEscuela" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="escuela" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="escuela" HeaderText="escuela" SortExpression="escuela" />
            <asp:BoundField DataField="nfactura" HeaderText="nfactura" SortExpression="nfactura" />
            <asp:BoundField DataField="fecharegistro" HeaderText="fecharegistro" SortExpression="fecharegistro" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
            <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres" />
        </Columns>
    </asp:GridView>
</p>
<p>
</p>
</asp:Content>

