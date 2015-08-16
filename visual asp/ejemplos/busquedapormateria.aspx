

<%@ Page Title="" Language="VB" MasterPageFile="~/Maestro/Menu.master" AutoEventWireup="false" CodeFile="busquedapormateria.aspx.vb" Inherits="ejemplos_busquedapormateria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <table class="auto-style1">
        <tr>
            <td>Ingresa codigo materia</td>
            <td>
                <asp:TextBox ID="txtMateria" runat="server" MaxLength="5"></asp:TextBox>
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
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:septimoConnectionString %>" SelectCommand="prMaterias_traerporCodigo" SelectCommandType="StoredProcedure">
        <SelectParameters>
           <asp:ControlParameter ControlID="txtMateria" Name="codigo" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="materia" HeaderText="materia" SortExpression="materia" />
                <asp:BoundField DataField="creditos" HeaderText="creditos" SortExpression="creditos" />
                <asp:BoundField DataField="carrera" HeaderText="carrera" SortExpression="carrera" />
                <asp:CheckBoxField DataField="laboratorio" HeaderText="laboratorio" SortExpression="laboratorio" />
                <asp:CheckBoxField DataField="activa" HeaderText="activa" SortExpression="activa" />
                <asp:BoundField DataField="fechaCreacion" HeaderText="fechaCreacion" SortExpression="fechaCreacion" />
            </Columns>
        </asp:GridView>
</p>
<p>
</p>
</asp:Content>

