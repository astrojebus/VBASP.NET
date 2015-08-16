<%@ Page Title="" Language="VB" MasterPageFile="~/Maestro/Menu.master" AutoEventWireup="false" CodeFile="IngresoEstuMaestro.aspx.vb" Inherits="ejemplos_IngresoEstuMaestro" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style1">
            <tr>
                <td>Matricula</td>
                <td>
                    <asp:TextBox ID="txtMatricula" runat="server" MaxLength="5"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Apellidos</td>
                <td>
                    <asp:TextBox ID="txtApellidos" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Nombres</td>
                <td>
                    <asp:TextBox ID="txtNombres" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Genero</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="cmbGenero" runat="server">
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                        <asp:ListItem Value="F">Femenino</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>Fecha de nacimiento</td>
                <td>
                    <asp:TextBox ID="txtFechaNac" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">
                    <asp:LinkButton ID="LinkButton1" runat="server">Guardar</asp:LinkButton>
                </td>
            </tr>
        </table>


     <div>
    
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:septimoConnectionString %>" SelectCommand="prEstudiantes_todos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="matricula" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="matricula" HeaderText="matricula" ReadOnly="True" SortExpression="matricula" />
                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" ReadOnly="True" SortExpression="Apellidos" />
                <asp:BoundField DataField="Nombres" HeaderText="Nombres" ReadOnly="True" SortExpression="Nombres" />
                <asp:BoundField DataField="fechaNac" HeaderText="fechaNac" SortExpression="fechaNac" />
                <asp:BoundField DataField="Sexo" HeaderText="Sexo" ReadOnly="True" SortExpression="Sexo" />
            </Columns>
        </asp:GridView>
</asp:Content>