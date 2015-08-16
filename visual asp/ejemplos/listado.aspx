<%@ Page Language="VB" AutoEventWireup="false" CodeFile="listado.aspx.vb" Inherits="ejemplos_listado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        LISTADO DE ESTUDIANTES<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="datasetSeptimoTableAdapters.estudiantesTableAdapter" UpdateMethod="Update">
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
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="matricula" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" PageSize="5">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="matricula" HeaderText="matricula" ReadOnly="True" SortExpression="matricula" />
                <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
                <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres" />
                <asp:BoundField DataField="genero" HeaderText="Género" SortExpression="genero" />
                <asp:BoundField DataField="fechaNac" DataFormatString="{0:d}" HeaderText="Fecha de Nacimiento" SortExpression="fechaNac" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </form>
</body>
</html>
