<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ingresoestudiantesCarreraFormView.aspx.vb" Inherits="ejemplos_ingresoestudiantesCarreraFormView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        INGRESANDO ESTUDIANTES CON FORM VIEW SACANDO DATOS DE OTRA TABLA</div>
        <asp:ObjectDataSource ID="ObjectDataSourceEstudiantes" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="datasetSeptimoTableAdapters.estudiantesTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_matricula" Type="String" />
                <asp:Parameter Name="Original_apellidos" Type="String" />
                <asp:Parameter Name="Original_nombres" Type="String" />
                <asp:Parameter Name="Original_genero" Type="String" />
                <asp:Parameter Name="Original_fechaNac" Type="DateTime" />
                <asp:Parameter Name="Original_idCarrera" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="matricula" Type="String" />
                <asp:Parameter Name="apellidos" Type="String" />
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="genero" Type="String" />
                <asp:Parameter Name="fechaNac" Type="DateTime" />
                <asp:Parameter Name="idCarrera" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="apellidos" Type="String" />
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="genero" Type="String" />
                <asp:Parameter Name="fechaNac" Type="DateTime" />
                <asp:Parameter Name="idCarrera" Type="Int32" />
                <asp:Parameter Name="Original_matricula" Type="String" />
                <asp:Parameter Name="Original_apellidos" Type="String" />
                <asp:Parameter Name="Original_nombres" Type="String" />
                <asp:Parameter Name="Original_genero" Type="String" />
                <asp:Parameter Name="Original_fechaNac" Type="DateTime" />
                <asp:Parameter Name="Original_idCarrera" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSourceCarreras" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="datasetSeptimoTableAdapters.carrerasTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_idCarrera" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="carrera" Type="String" />
                <asp:Parameter Name="idCarrera" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="carrera" Type="String" />
                <asp:Parameter Name="Original_idCarrera" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="matricula" DataSourceID="ObjectDataSourceEstudiantes">
            <EditItemTemplate>
                matricula:
                <asp:Label ID="matriculaLabel1" runat="server" Text='<%# Eval("matricula") %>' />
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
                idCarrera:
                <asp:TextBox ID="idCarreraTextBox" runat="server" Text='<%# Bind("idCarrera") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
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
                idCarrera:
                <asp:TextBox ID="idCarreraTextBox" runat="server" Text='<%# Bind("idCarrera") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                matricula:
                <asp:Label ID="matriculaLabel" runat="server" Text='<%# Eval("matricula") %>' />
                <br />
                apellidos:
                <asp:Label ID="apellidosLabel" runat="server" Text='<%# Bind("apellidos") %>' />
                <br />
                nombres:
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
                idCarrera:
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="ObjectDataSourceCarreras" DataTextField="carrera" DataValueField="idCarrera" SelectedValue='<%# Bind("idCarrera") %>'>
                </asp:DropDownList>
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
            </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
