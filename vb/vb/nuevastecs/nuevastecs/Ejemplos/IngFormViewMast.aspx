<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestras/PagPrincipal.Master" CodeBehind="IngFormViewMast.aspx.vb" Inherits="NuevasTECS.IngFormViewMast" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <strong>Ingeso de estudiantes utilizando FormView<br />
        </strong>
        <br />
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="matricula" DataSourceID="SqlDataSource1" GridLines="Horizontal">
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
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Nombres</td>
                        <td>
                            <asp:TextBox ID="nombresTextBox" runat="server" Text='<%# Bind("nombres") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Apellidos</td>
                        <td>
                            <asp:TextBox ID="apellidosTextBox" runat="server" Text='<%# Bind("apellidos") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Genero</td>
                        <td>
                            <asp:TextBox ID="generoTextBox" runat="server" Text='<%# Bind("genero") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Fecha Nacimiento</td>
                        <td>
                            <asp:TextBox ID="fechaNacTextBox" runat="server" style="margin-bottom: 0px" Text='<%# Bind("fechaNac") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                        </td>
                        <td>
                            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                        </td>
                    </tr>
                </table>
                <br />
                &nbsp;
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Matricula:</td>
                        <td>
                            <asp:Label ID="matriculaLabel" runat="server" Text='<%# Eval("matricula") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Nombres:</td>
                        <td>
                            <asp:Label ID="apellidosLabel" runat="server" Text='<%# Bind("apellidos") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Apellidos:</td>
                        <td>
                            <asp:Label ID="nombresLabel" runat="server" Text='<%# Bind("nombres") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Genero:</td>
                        <td>
                            <asp:Label ID="generoLabel" runat="server" Text='<%# Bind("genero") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Fecha Nacimiento:</td>
                        <td>
                            <asp:Label ID="fechaNacLabel" runat="server" Text='<%# Bind("fechaNac") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
&nbsp;<br />&nbsp;<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
            </ItemTemplate>
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:NUEVASTECSConnectionString %>" DeleteCommand="DELETE FROM [estudiantes] WHERE [matricula] = @original_matricula AND [apellidos] = @original_apellidos AND [nombres] = @original_nombres AND [genero] = @original_genero AND [fechaNac] = @original_fechaNac" InsertCommand="INSERT INTO [estudiantes] ([apellidos], [nombres], [genero], [fechaNac]) VALUES (@apellidos, @nombres, @genero, @fechaNac)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [estudiantes]" UpdateCommand="UPDATE [estudiantes] SET [apellidos] = @apellidos, [nombres] = @nombres, [genero] = @genero, [fechaNac] = @fechaNac WHERE [matricula] = @original_matricula AND [apellidos] = @original_apellidos AND [nombres] = @original_nombres AND [genero] = @original_genero AND [fechaNac] = @original_fechaNac">
            <DeleteParameters>
                <asp:Parameter Name="original_matricula" Type="Int32" />
                <asp:Parameter Name="original_apellidos" Type="String" />
                <asp:Parameter Name="original_nombres" Type="String" />
                <asp:Parameter Name="original_genero" Type="String" />
                <asp:Parameter DbType="Date" Name="original_fechaNac" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="apellidos" Type="String" />
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="genero" Type="String" />
                <asp:Parameter DbType="Date" Name="fechaNac" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="apellidos" Type="String" />
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="genero" Type="String" />
                <asp:Parameter DbType="Date" Name="fechaNac" />
                <asp:Parameter Name="original_matricula" Type="Int32" />
                <asp:Parameter Name="original_apellidos" Type="String" />
                <asp:Parameter Name="original_nombres" Type="String" />
                <asp:Parameter Name="original_genero" Type="String" />
                <asp:Parameter DbType="Date" Name="original_fechaNac" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NuevasTECS.dsNuevasTECSTableAdapters.carreraTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nombre" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Original_Id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
        <asp:FormView ID="FormView2" runat="server" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="ObjectDataSource1" GridLines="Both">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Nombre:
                <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Nombre:
                <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Nombre:
                <asp:Label ID="NombreLabel" runat="server" Text='<%# Bind("Nombre") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
            </ItemTemplate>
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:FormView>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NuevasTECS.dsNuevasTECSTableAdapters.carreraTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nombre" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Original_Id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:FormView ID="FormView3" runat="server" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="matricula" DataSourceID="SqlDataSource2" GridLines="Both">
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
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSource3" DataTextField="Nombre" DataValueField="Id" SelectedValue='<%# Bind("idCarrera") %>'>
                </asp:DropDownList>
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
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
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="ObjectDataSource3" DataTextField="Nombre" DataValueField="Id" SelectedValue='<%# Bind("idCarrera") %>'>
                </asp:DropDownList>
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
                <asp:Label ID="generoLabel" runat="server" Text='<%# Bind("genero") %>' />
                <br />
                fechaNac:
                <asp:Label ID="fechaNacLabel" runat="server" Text='<%# Bind("fechaNac") %>' />
                <br />
                idCarrera&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource3" DataTextField="Nombre" DataValueField="Id" Enabled="False" SelectedValue='<%# Bind("idCarrera") %>'>
                </asp:DropDownList>
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
            </ItemTemplate>
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:NUEVASTECSConnectionString %>" DeleteCommand="DELETE FROM [estudiantes] WHERE [matricula] = @original_matricula AND [apellidos] = @original_apellidos AND [nombres] = @original_nombres AND [genero] = @original_genero AND [fechaNac] = @original_fechaNac AND (([idCarrera] = @original_idCarrera) OR ([idCarrera] IS NULL AND @original_idCarrera IS NULL))" InsertCommand="INSERT INTO [estudiantes] ([apellidos], [nombres], [genero], [fechaNac], [idCarrera]) VALUES (@apellidos, @nombres, @genero, @fechaNac, @idCarrera)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [estudiantes]" UpdateCommand="UPDATE [estudiantes] SET [apellidos] = @apellidos, [nombres] = @nombres, [genero] = @genero, [fechaNac] = @fechaNac, [idCarrera] = @idCarrera WHERE [matricula] = @original_matricula AND [apellidos] = @original_apellidos AND [nombres] = @original_nombres AND [genero] = @original_genero AND [fechaNac] = @original_fechaNac AND (([idCarrera] = @original_idCarrera) OR ([idCarrera] IS NULL AND @original_idCarrera IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_matricula" Type="Int32" />
                <asp:Parameter Name="original_apellidos" Type="String" />
                <asp:Parameter Name="original_nombres" Type="String" />
                <asp:Parameter Name="original_genero" Type="String" />
                <asp:Parameter DbType="Date" Name="original_fechaNac" />
                <asp:Parameter Name="original_idCarrera" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="apellidos" Type="String" />
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="genero" Type="String" />
                <asp:Parameter DbType="Date" Name="fechaNac" />
                <asp:Parameter Name="idCarrera" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="apellidos" Type="String" />
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="genero" Type="String" />
                <asp:Parameter DbType="Date" Name="fechaNac" />
                <asp:Parameter Name="idCarrera" Type="Int32" />
                <asp:Parameter Name="original_matricula" Type="Int32" />
                <asp:Parameter Name="original_apellidos" Type="String" />
                <asp:Parameter Name="original_nombres" Type="String" />
                <asp:Parameter Name="original_genero" Type="String" />
                <asp:Parameter DbType="Date" Name="original_fechaNac" />
                <asp:Parameter Name="original_idCarrera" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:FormView ID="FormView4" runat="server" AllowPaging="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Id" DataSourceID="ObjectDataSource3" ForeColor="Black">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Nombre:
                <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <InsertItemTemplate>
                Nombre:
                <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Nombre:
                <asp:Label ID="NombreLabel" runat="server" Text='<%# Bind("Nombre") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
            </ItemTemplate>
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        </asp:FormView>
        <br />
    

</asp:Content>
