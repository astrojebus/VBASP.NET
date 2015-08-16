


<%@ Page Title="Listado notas" Language="VB" MasterPageFile="~/Maestro/Menu.master" AutoEventWireup="false" CodeFile="listadonotas.aspx.vb" Inherits="ejemplos_listadonotas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    LISTADO DE ESTUDIANTES</p>
<p>
   <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetnotasTableAdapters.notasTableAdapter"></asp:ObjectDataSource>
</p>
<p>
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdNotas" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="IdNotas" HeaderText="IdNotas" InsertVisible="False" ReadOnly="True" SortExpression="IdNotas" />
                <asp:BoundField DataField="matricula" HeaderText="matricula" SortExpression="matricula" />
                <asp:BoundField DataField="codigo" HeaderText="codigo" SortExpression="codigo" />
                <asp:BoundField DataField="parciales" HeaderText="parciales" SortExpression="parciales" />
                <asp:BoundField DataField="examen" HeaderText="examen" SortExpression="examen" />
                <asp:BoundField DataField="fechaCreacion" HeaderText="fechaCreacion" SortExpression="fechaCreacion" />
            </Columns>
        </asp:GridView>
</p>
</asp:Content>