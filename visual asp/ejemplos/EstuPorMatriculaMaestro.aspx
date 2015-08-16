<%@ Page Title="" Language="VB" MasterPageFile="~/Maestro/Menu.master" AutoEventWireup="false" CodeFile="EstuPorMatriculaMaestro.aspx.vb" Inherits="ejemplos_EstuPorMatriculaMaestro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table class="auto-style1">
        <tr>
            <td>Ingrese matricula</td>
            <td>
                <asp:TextBox ID="txtmatricula" runat="server" MaxLength="5"></asp:TextBox>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:septimoConnectionString %>" SelectCommand="prEstudiantes_traerporMatricula" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtmatricula" Name="matricula" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="matricula" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="matricula" HeaderText="matricula" ReadOnly="True" SortExpression="matricula" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
            <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres" />
            <asp:BoundField DataField="fechaNac" HeaderText="fechaNac" SortExpression="fechaNac" />
            <asp:BoundField DataField="genero" HeaderText="genero" SortExpression="genero" />
        </Columns>
    </asp:GridView>
</p>
<p>
</p>
</asp:Content>

