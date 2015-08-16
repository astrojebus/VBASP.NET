<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ingresoestudiantesFormView.aspx.vb" Inherits="ejemplos_ingresoestudiantesFormView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Ingreso de estudiantes usando Form View</div>
        <asp:ObjectDataSource ID="ObjectDataSourceEstudiantes" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="datasetSeptimoTableAdapters.estudiantesTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_matricula" Type="String" />
                <asp:Parameter Name="Original_apellidos" Type="String" />
                <asp:Parameter Name="Original_nombres" Type="String" />
                <asp:Parameter Name="Original_genero" Type="String" />
                <asp:Parameter Name="Original_fechaNac" Type="DateTime" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="matricula" Type="String" />
                <asp:Parameter Name="apellidos" Type="String" />
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="genero" Type="String" />
                <asp:Parameter Name="fechaNac" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="apellidos" Type="String" />
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="genero" Type="String" />
                <asp:Parameter Name="fechaNac" Type="DateTime" />
                <asp:Parameter Name="Original_matricula" Type="String" />
                <asp:Parameter Name="Original_apellidos" Type="String" />
                <asp:Parameter Name="Original_nombres" Type="String" />
                <asp:Parameter Name="Original_genero" Type="String" />
                <asp:Parameter Name="Original_fechaNac" Type="DateTime" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="matricula" DataSourceID="ObjectDataSourceEstudiantes" ForeColor="#333333">
            <EditItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>matricula:</td>
                        <td>
                            <asp:Label ID="matriculaLabel1" runat="server" Text='<%# Eval("matricula") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>apellidos: </td>
                        <td>
                            <asp:TextBox ID="apellidosTextBox" runat="server" Text='<%# Bind("apellidos") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>nombres: </td>
                        <td>
                            <asp:TextBox ID="nombresTextBox" runat="server" Text='<%# Bind("nombres") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>genero: </td>
                        <td>
                            <asp:TextBox ID="generoTextBox" runat="server" Text='<%# Bind("genero") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>fechaNac: </td>
                        <td>
                            <asp:TextBox ID="fechaNacTextBox" runat="server" Text='<%# Bind("fechaNac") %>' />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                matricula:
                <asp:TextBox ID="matriculaTextBox" runat="server" Text='<%# Bind("matricula") %>' />
                <br />
                apellidos:
                <asp:TextBox ID="apellidosTextBox" runat="server" Text='<%# Bind("apellidos") %>' />
                <br />
                nombres:
                <asp:TextBox ID="nombresTextBox" runat="server" Text='<%# Bind("nombres") %>' />
                <br />
                genero:
                <asp:TextBox ID="generoTextBox" runat="server" Text='<%# Bind("genero") %>' />
                <br />
                fechaNac:
                <asp:TextBox ID="fechaNacTextBox" runat="server" Text='<%# Bind("fechaNac") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>matricula: </td>
                        <td>
                            <asp:Label ID="matriculaLabel" runat="server" Text='<%# Eval("matricula") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>apellidos:</td>
                        <td>
                            <asp:Label ID="apellidosLabel" runat="server" Text='<%# Bind("apellidos") %>' />
                        </td>
                    </tr>
                </table>
&nbsp;<br />nombres:
                <asp:Label ID="nombresLabel" runat="server" Text='<%# Bind("nombres") %>' />
                <br />
                genero:
                <asp:DropDownList ID="DropDownList1" runat="server" Enabled="False" SelectedValue='<%# Bind("genero") %>'>
                    <asp:ListItem Value="F">Femenino</asp:ListItem>
                    <asp:ListItem Value="M">Masculino</asp:ListItem>
                </asp:DropDownList>
                <br />
                fechaNac:
                <asp:Label ID="fechaNacLabel" runat="server" Text='<%# Bind("fechaNac") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
            </ItemTemplate>
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:FormView>
    </form>
</body>
</html>
