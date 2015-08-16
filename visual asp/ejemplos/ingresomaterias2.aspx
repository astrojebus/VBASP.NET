<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ingresomaterias2.aspx.vb" Inherits="ejemplos_ingresomaterias2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ingreso materias</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>Codigo</td>
                <td>
                    <asp:TextBox ID="txtCodigo" runat="server" MaxLength="5"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Materia</td>
                <td>
                    <asp:TextBox ID="txtMateria" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Creditos</td>
                <td>
                    <asp:TextBox ID="txtCreditos" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td>Carrera</td>
                <td>
                    <asp:TextBox ID="txtCarrera" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>


            <tr>
                <td class="auto-style2">Laboratorio</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="cmbLaboratorio" runat="server">
                        <asp:ListItem Value="1">Si</asp:ListItem>
                        <asp:ListItem Value="0">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2"></td>
            </tr>
  		<tr>
                <td class="auto-style2">Activa</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="cmbActiva" runat="server">
                        <asp:ListItem Value="1">Si</asp:ListItem>
                        <asp:ListItem Value="0">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>Fecha de creacion/td>
                <td>
                    <asp:TextBox ID="txtfechaCreacion" runat="server"></asp:TextBox>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:septimoConnectionString %>" SelectCommand="prMaterias_listado" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
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
    </form>
</body>
</html>
