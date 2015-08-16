<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestras/PagPrincipal.Master" CodeBehind="RegistroEstudiantesMast.aspx.vb" Inherits="NuevasTECS.RegistroEstudiantesMast" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Estilos/botones.css" rel="stylesheet" type="text/css" />
	<%--<link href="../Estilos/tabla.css" rel="stylesheet" type="text/css" />--%>

    <script type="text/javascript" src="../JavaScript/jquery-2.0.3.js"></script>

    <style type="text/css" >
        .input:focus { 
            background-color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <strong>
        REGISTRO DE ESTUDIANTES</strong>
        <table class='flat-table' id='racetimes'>
            <thead>
                <tr>
                    <th id="firstrow">
                        Nombre
                    </th>
                    <td>Apellido</td>
                    <td>Genero</td>
                    <td>Fecha Nacimiento</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre"></asp:TextBox> 
                    </td>
                    <td>
                        <asp:TextBox ID="txtApellido" runat="server" placeholder="Apellido"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList ID="lstGenero" runat="server" >
                            <asp:ListItem Value="">Elija un genero</asp:ListItem>
                            <asp:ListItem Value="M">Masculino</asp:ListItem>
                            <asp:ListItem Value="F">Femenino</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFechaNacimiento" runat="server" TextMode="Date" placeholder="Fecha"></asp:TextBox>
                    </td>
                </tr>
                <tr>
					<td colspan="2" style="text-align:center">
                        <asp:Button ID="btnGuardar" runat="server" Text="Agregar" CssClass="button button-rounded button-flat-primary" />
					</td>
					<td colspan="2" style="text-align:center">
                        <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" CssClass="button button-rounded button-flat-primary" />
					</td>
				</tr>
            </tbody>
        </table>
        <br />
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        <br />
        <br />

        <strong>LISTADO ESTUDIANTES<br />
        </strong>
        <p>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NUEVASTECSConnectionString %>" SelectCommand="pa_listadoEstudiantesTodos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="matricula" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:BoundField DataField="Nombres" HeaderText="Nombres" ReadOnly="True" SortExpression="Nombres" />
                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" ReadOnly="True" SortExpression="Apellidos" />
                    <asp:BoundField DataField="matricula" HeaderText="Matricula" InsertVisible="False" ReadOnly="True" SortExpression="matricula" />
                    <asp:BoundField DataField="fechaNac" DataFormatString="{0:d}" HeaderText="Fecha Nacimiento" SortExpression="fechaNac" />
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" ReadOnly="True" SortExpression="Sexo" />
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

        </p>

    </div>
</asp:Content>
