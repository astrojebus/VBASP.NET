<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestras/PagPrincipal.Master" CodeBehind="FiltoPorMatriculaMast.aspx.vb" Inherits="NuevasTECS.FiltoPorMatriculaMast" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <strong>BUSQUEDA MATERIA</strong>
        <br/>
        Ingrese la matricula:
        <asp:TextBox ID="txtCreditos" runat="server" MaxLength="3"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnBuscar" runat="server" CssClass="button button-rounded button-flat-primary" Text="Buscar" />
        
        <br />
        <br />
        <strong>BUSQUEDA ESTUDIANTE</strong>
            <br />
        Ingrese el nombre:
        <asp:TextBox ID="txtNombre" runat="server" MaxLength="3"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnBuscar0" runat="server" CssClass="button button-rounded button-flat-primary" Text="Buscar" />
        
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="codigo" HeaderText="codigo" InsertVisible="False" ReadOnly="True" SortExpression="codigo" />
                <asp:BoundField DataField="materia" HeaderText="materia" SortExpression="materia" />
                <asp:BoundField DataField="creditos" HeaderText="creditos" SortExpression="creditos" />
                <asp:BoundField DataField="carrera" HeaderText="carrera" SortExpression="carrera" />
                <asp:CheckBoxField DataField="laboratorio" HeaderText="laboratorio" SortExpression="laboratorio" />
                <asp:CheckBoxField DataField="activa" HeaderText="activa" SortExpression="activa" />
                <asp:BoundField DataField="fechaCreacion" HeaderText="fechaCreacion" SortExpression="fechaCreacion" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NUEVASTECSConnectionString %>" SelectCommand="pa_materiasTodas" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtCreditos" Name="creditos" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="matricula" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="matricula" HeaderText="matricula" InsertVisible="False" ReadOnly="True" SortExpression="matricula" />
                <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
                <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres" />
                <asp:BoundField DataField="genero" HeaderText="genero" SortExpression="genero" />
                <asp:BoundField DataField="fechaNac" HeaderText="fechaNac" SortExpression="fechaNac" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NUEVASTECSConnectionString %>" SelectCommand="pa_estudiantesFiltro" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtNombre" Name="nombres" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

</asp:Content>
