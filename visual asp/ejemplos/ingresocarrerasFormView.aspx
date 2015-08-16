<%@ Page Language="VB" MasterPageFile="~/Maestro/Menu.master" AutoEventWireup="false" CodeFile="ingresocarrerasFormView.aspx.vb" Inherits="ejemplos_ingresocarrerasFormView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    
    </div>
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="idCarrera" DataSourceID="ObjectDataSourceCarreras">
            <EditItemTemplate>
                carrera:
                <asp:TextBox ID="carreraTextBox" runat="server" Text='<%# Bind("carrera") %>' />
                <br />
                idCarrera:
                <asp:Label ID="idCarreraLabel1" runat="server" Text='<%# Eval("idCarrera") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <InsertItemTemplate>
                carrera:
                <asp:TextBox ID="carreraTextBox" runat="server" Text='<%# Bind("carrera") %>' />
                <br />
                idCarrera:
                <asp:TextBox ID="idCarreraTextBox" runat="server" Text='<%# Bind("idCarrera") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                carrera:
                <asp:Label ID="carreraLabel" runat="server" Text='<%# Bind("carrera") %>' />
                <br />
                idCarrera:
                <asp:Label ID="idCarreraLabel" runat="server" Text='<%# Eval("idCarrera") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
            </ItemTemplate>
        </asp:FormView>
</asp:Content>