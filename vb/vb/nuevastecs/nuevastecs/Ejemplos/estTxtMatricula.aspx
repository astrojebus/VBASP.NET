<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestras/PagPrincipal.Master" CodeBehind="estTxtMatricula.aspx.vb" Inherits="NuevasTECS.estTxtMatricula" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
    <br />
    Ingrese el nombre&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtMatricula" runat="server" MaxLength="5"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" style="height: 26px" />
        &nbsp;</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="matricula" DataSourceID="sqlListadoEstudianres">
        <Columns>
            <asp:BoundField DataField="matricula" HeaderText="matricula" InsertVisible="False" ReadOnly="True" SortExpression="matricula" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
            <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres" />
            <asp:BoundField DataField="genero" HeaderText="genero" SortExpression="genero" />
            <asp:BoundField DataField="fechaNac" HeaderText="fechaNac" SortExpression="fechaNac" />
            <asp:BoundField DataField="idCarrera" HeaderText="idCarrera" SortExpression="idCarrera" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="sqlListadoEstudianres" runat="server" ConnectionString="<%$ ConnectionStrings:NUEVASTECSConnectionString %>" SelectCommand="pa_estudiantesFiltro" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtMatricula" Name="nombres" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>

</asp:Content>
