<%@ Page Title="Listado estudiantes" Language="VB" MasterPageFile="~/Maestro/Menu.master" AutoEventWireup="false" CodeFile="listadoestudiantesmaestro.aspx.vb" Inherits="ejemplos_listadoestudiantes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    LISTADO DE ESTUDIANTES</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:septimoConnectionString %>" SelectCommand="prEstudiantes_todos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="matricula" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="matricula" HeaderText="matricula" ReadOnly="True" SortExpression="matricula" />
            <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" ReadOnly="True" SortExpression="Apellidos" />
            <asp:BoundField DataField="Nombres" HeaderText="Nombres" ReadOnly="True" SortExpression="Nombres" />
            <asp:BoundField DataField="fechaNac" HeaderText="fechaNac" SortExpression="fechaNac" />
            <asp:BoundField DataField="Sexo" HeaderText="Sexo" ReadOnly="True" SortExpression="Sexo" />
        </Columns>
    </asp:GridView>
</p>
</asp:Content>

