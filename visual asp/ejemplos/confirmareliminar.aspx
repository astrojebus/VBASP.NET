<%@ Page Title="" Language="VB" MasterPageFile="~/Maestro/Menu.master" AutoEventWireup="false" CodeFile="confirmareliminar.aspx.vb" Inherits="ejemplos_confirmareliminar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="datasetInformesTableAdapters.materiasTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_codigo" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="codigo" Type="String" />
            <asp:Parameter Name="materia" Type="String" />
            <asp:Parameter Name="creditos" Type="Int32" />
            <asp:Parameter Name="carrera" Type="String" />
            <asp:Parameter Name="laboratorio" Type="Boolean" />
            <asp:Parameter Name="activa" Type="Boolean" />
            <asp:Parameter Name="fechaCreacion" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="materia" Type="String" />
            <asp:Parameter Name="creditos" Type="Int32" />
            <asp:Parameter Name="carrera" Type="String" />
            <asp:Parameter Name="laboratorio" Type="Boolean" />
            <asp:Parameter Name="activa" Type="Boolean" />
            <asp:Parameter Name="fechaCreacion" Type="DateTime" />
            <asp:Parameter Name="Original_codigo" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return config(&quot;Esta seguro que desea eliminar el registro?&quot;" Text="Eliminar"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="codigo" HeaderText="codigo" ReadOnly="True" SortExpression="codigo" />
            <asp:BoundField DataField="materia" HeaderText="materia" SortExpression="materia" />
            <asp:BoundField DataField="creditos" HeaderText="creditos" SortExpression="creditos" />
            <asp:BoundField DataField="carrera" HeaderText="carrera" SortExpression="carrera" />
            <asp:CheckBoxField DataField="laboratorio" HeaderText="laboratorio" SortExpression="laboratorio" />
            <asp:CheckBoxField DataField="activa" HeaderText="activa" SortExpression="activa" />
            <asp:BoundField DataField="fechaCreacion" HeaderText="fechaCreacion" SortExpression="fechaCreacion" />
        </Columns>
    </asp:GridView>
</asp:Content>

