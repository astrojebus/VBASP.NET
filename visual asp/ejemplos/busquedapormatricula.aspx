<%@ Page Language="VB" AutoEventWireup="false" CodeFile="busquedapormatricula.aspx.vb" Inherits="ejemplos_busquedapormatricula" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>busqueda por numero de matricula</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong>busqueda de estudiantes por matricula</strong></div>
        <table class="auto-style1">
            <tr>
                <td>Ingresa la matricula</td>
                <td>
                    <asp:TextBox ID="txtMatricula" runat="server" MaxLength="5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Buscar" />
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:septimoConnectionString %>" SelectCommand="prEstudiantes_traerporMatricula" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtMatricula" Name="matricula" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="matricula" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="matricula" HeaderText="matricula" ReadOnly="True" SortExpression="matricula" />
                <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
                <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres" />
                <asp:BoundField DataField="fechaNac" HeaderText="fechaNac" SortExpression="fechaNac" />
                <asp:BoundField DataField="genero" HeaderText="genero" SortExpression="genero" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
